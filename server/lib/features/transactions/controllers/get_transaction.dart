import 'package:dart_frog/dart_frog.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/transaction_repository.dart';
import '../services/transaction_conversion_service.dart';

Future<Response> getTransaction(RequestContext context, String transactionId) async {
  final transactionRepository = await context.read<Future<TransactionRepository>>();
  final transactionConversionService = await context.read<Future<TransactionConversionService>>();

  final userId = context.read<UserInfo>().id;

  final dbTransaction = await transactionRepository.getTransaction(
    userId,
    transactionId,
  );

  final transaction = (await transactionConversionService.convertTransactions([dbTransaction])).first;

  return Response.json(body: transaction);
}
