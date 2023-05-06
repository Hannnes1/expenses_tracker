import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../repositories/transactions.dart';

Future<Response> onRequest(RequestContext context) async {
  final dbTransactions = await TransactionRepository().getTransactions(0);

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
        ),
      )
      .toList();

  return Response.json(
    body: transactions,
  );
}
