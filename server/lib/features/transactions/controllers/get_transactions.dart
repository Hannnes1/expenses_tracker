import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/transaction_repository.dart';
import '../services/transaction_conversion_service.dart';

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
  final transactionConversionService = await context.read<Future<TransactionConversionService>>();

  final userId = context.read<UserInfo>().id;

  final dbTransactions = await transactionRepository.getTransactions(
    userId,
    offset,
    limit,
  );

  final transactions = await transactionConversionService.convertTransactions(dbTransactions);

  return Response.json(body: transactions);
}
