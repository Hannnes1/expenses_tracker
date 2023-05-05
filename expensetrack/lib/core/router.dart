import 'package:expensetrack/home/ui/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final navigatorKeyProvider = Provider<GlobalKey<NavigatorState>>((ref) {
  return GlobalKey<NavigatorState>();
});

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: ref.watch(navigatorKeyProvider),
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => _adaptiveRoute(
          key: state.pageKey,
          child: const HomePage(),
        ),
      ),
    ],
  );
});

Page _adaptiveRoute({required LocalKey key, required Widget child}) {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CupertinoPage(
      key: key,
      child: child,
    );
  }
  return MaterialPage(
    key: key,
    child: child,
  );
}
