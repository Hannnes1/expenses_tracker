import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../accounts/repositories/account_repository.dart';
import '../../categories/repositories/category_repository.dart';
import '../models/db_transaction.dart';

Middleware transactionConversionServiceProvider() {
  return provider<Future<TransactionConversionService>>(
    (context) async => TransactionConversionService(
      await context.read<Future<AccountRepository>>(),
      await context.read<Future<CategoryRepository>>(),
    ),
  );
}

class TransactionConversionService {
  TransactionConversionService(this.accountRepository, this.categoryRepository);

  final AccountRepository accountRepository;
  final CategoryRepository categoryRepository;

  /// Convert multiple [DbTransaction]s to [Transaction]s.
  Future<List<Transaction>> convertTransactions(List<DbTransaction> dbTransactions) async {
    final dbAccounts = await accountRepository.getAccountsByIds(dbTransactions.map((e) => e.accountId).toSet());
    final dbCategories = await categoryRepository.getCategoriesByIds(dbTransactions.map((e) => e.categoryId).toSet());

    final accounts = dbAccounts
        .map((e) => Account(
              id: e.id,
              name: e.name,
              description: e.description,
            ))
        .toList();

    final categories = dbCategories
        .map((e) => Category(
              id: e.id,
              name: e.name,
              description: e.description,
            ))
        .toList();

    return dbTransactions
        .map(
          (e) => Transaction(
            id: e.id!,
            date: e.date,
            text: e.text,
            amount: e.amount,
            account: accounts.firstWhere((account) => account.id == e.accountId),
            category: categories.firstWhere((category) => category.id == e.categoryId),
            fixedCost: e.fixedCost,
            description: e.description,
          ),
        )
        .toList();
  }
}
