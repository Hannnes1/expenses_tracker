import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/transaction_repository.dart';

Future<Response> deleteTransaction(RequestContext context, String transactionId) async {
  final transactionRepository = await context.read<Future<TransactionRepository>>();

  final userId = context.read<UserInfo>().id;

  await transactionRepository.deleteTransaction(
    userId,
    transactionId,
  );

  return Response(
    statusCode: HttpStatus.noContent,
  );
}
