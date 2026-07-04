import 'package:dart_frog/dart_frog.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/transaction_repository.dart';
import '../services/transaction_conversion_service.dart';

/// Get all transactions that are linked to (i.e. reimburse/refund) the given transaction.
Future<Response> getReimbursements(
    RequestContext context, String transactionId) async {
  final transactionRepository =
      await context.read<Future<TransactionRepository>>();
  final transactionConversionService =
      await context.read<Future<TransactionConversionService>>();

  final userId = context.read<UserInfo>().id;

  final dbTransactions =
      await transactionRepository.getReimbursements(userId, transactionId);

  final transactions =
      await transactionConversionService.convertTransactions(dbTransactions);

  return Response.json(body: transactions);
}
