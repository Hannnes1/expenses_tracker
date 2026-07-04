import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/transaction_repository.dart';
import '../services/transaction_conversion_service.dart';

/// Set or clear the transaction that this transaction is a reimbursement/refund for.
Future<Response> updateTransactionLink(
    RequestContext context, String transactionId) async {
  final request = context.request;

  late LinkTransaction link;
  try {
    final body = await request.json();
    link = LinkTransaction.fromJson(body);
  } catch (e) {
    return Response.json(statusCode: HttpStatus.badRequest);
  }

  if (link.linkedTransactionId == transactionId) {
    return Response.json(statusCode: HttpStatus.badRequest);
  }

  final transactionRepository =
      await context.read<Future<TransactionRepository>>();
  final transactionConversionService =
      await context.read<Future<TransactionConversionService>>();

  final userId = context.read<UserInfo>().id;

  if (link.linkedTransactionId != null) {
    try {
      await transactionRepository.getTransaction(
          userId, link.linkedTransactionId!);
    } catch (e) {
      return Response.json(statusCode: HttpStatus.notFound);
    }
  }

  final newDbTransaction = await transactionRepository.updateTransactionLink(
    userId,
    transactionId,
    link.linkedTransactionId,
  );

  final newTransaction = (await transactionConversionService
          .convertTransactions([newDbTransaction]))
      .first;

  return Response.json(body: newTransaction);
}
