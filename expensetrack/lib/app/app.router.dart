// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/view/add_transactions/add_transactions_view.dart';
import '../ui/view/home/home_view.dart';

class Routes {
  static const String homeView = '/';
  static const String addTransactionsView = '/add-transactions-view';
  static const all = <String>{
    homeView,
    addTransactionsView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.addTransactionsView, page: AddTransactionsView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    AddTransactionsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddTransactionsView(),
        settings: data,
      );
    },
  };
}
