import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../models/db_transaction.dart';
import '../repositories/transaction_repository.dart';
import '../services/transaction_conversion_service.dart';

Future<Response> createTransaction(RequestContext context) async {
  final request = context.request;

  late CreateTransaction transaction;
  try {
    final body = await request.json();
    transaction = CreateTransaction.fromJson(body);
  } catch (e) {
    return Response.json(statusCode: HttpStatus.badRequest);
  }

  final transactionRepository = await context.read<Future<TransactionRepository>>();
  final transactionConversionService = await context.read<Future<TransactionConversionService>>();

  final userId = context.read<UserInfo>().id;

  final newDbTransaction = await transactionRepository.createTransaction(
    DbTransaction(
      userId: userId,
      date: transaction.date,
      text: transaction.text,
      amount: transaction.amount,
      accountId: transaction.accountId,
      categoryId: transaction.categoryId,
      fixedCost: transaction.fixedCost,
      description: transaction.description,
    ),
  );

  final newTransaction = (await transactionConversionService.convertTransactions([newDbTransaction])).first;

  return Response.json(
    statusCode: HttpStatus.created,
    body: newTransaction,
  );
}
