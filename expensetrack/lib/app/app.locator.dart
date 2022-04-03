// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/category_service.dart';
import '../services/file_picker.dart';
import '../services/transaction_service.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => TransactionService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => FilePickerService());
  locator.registerLazySingleton(() => CategoryService());
}
