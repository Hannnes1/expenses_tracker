// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/view/add_transaction/add_transaction_view.dart';
import '../ui/view/home/home_view.dart';

class Routes {
  static const String homeView = '/';
  static const String addTransactionView = '/add-transaction-view';
  static const all = <String>{
    homeView,
    addTransactionView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.addTransactionView, page: AddTransactionView),
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
    AddTransactionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddTransactionView(),
        settings: data,
      );
    },
  };
}
