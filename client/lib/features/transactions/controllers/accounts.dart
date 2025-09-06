import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/features/transactions/repositories/accounts_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'accounts.g.dart';

@riverpod
Future<List<Account>> accounts(Ref ref) async {
  ref.cacheFor(kDefaultCacheDuration);

  return await ref.watch(accountsRepositoryProvider).getAccounts();
}
