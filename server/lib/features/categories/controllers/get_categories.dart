import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/category_repository.dart';

Future<Response> getCategories(RequestContext context) async {
  final categoryRepository = await context.read<Future<CategoryRepository>>();

  final userId = context.read<UserInfo>().id;

  final dbCategories = await categoryRepository.getCategories(userId);

  final categories = dbCategories.map((e) => Category(id: e.id, name: e.name, description: e.description)).toList();

  return Response.json(body: categories);
}
