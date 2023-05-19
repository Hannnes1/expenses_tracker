import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/account_repository.dart';

Future<Response> getAccounts(RequestContext context) async {
  final accountRepository = await context.read<Future<AccountRepository>>();

  final userId = context.read<UserInfo>().id;

  final dbAccounts = await accountRepository.getAccounts(userId);

  final accounts = dbAccounts
      .map((e) => Account(
            id: e.id,
            name: e.name,
            description: e.description,
          ))
      .toList();

  return Response.json(body: accounts);
}
