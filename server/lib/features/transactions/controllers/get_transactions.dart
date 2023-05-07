import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/transactions.dart';

Future<Response> getTransactions(RequestContext context) async {
  final request = context.request;
  final queryParameters = request.uri.queryParameters;

  late int offset;
  late int limit;
  try {
    offset = int.parse(queryParameters['offset'] ?? '0');
    limit = int.parse(queryParameters['limit'] ?? '20');
  } catch (e) {
    return Response.json(statusCode: HttpStatus.badRequest);
  }

  final transactionRepository = await context.read<Future<TransactionRepository>>();
  final userId = context.read<UserInfo>().id;

  final dbTransactions = await transactionRepository.getTransactions(
    userId,
    offset,
    limit,
  );

  final transactions = dbTransactions
      .map(
        (e) => Transaction(
          id: e.id!,
          date: e.date,
          text: e.text,
          amount: e.amount,
          accountId: e.accountId,
          categoryId: e.categoryId,
          fixedCost: e.fixedCost,
          description: e.description,
        ),
      )
      .toList();

  return Response.json(body: transactions);
}
