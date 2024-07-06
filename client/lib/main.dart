import 'dart:io';

import 'package:expensetrack/core/router.dart';
import 'package:expensetrack/core/theme/theme.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(mergeWith: Platform.environment);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Expense Track',
      // themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: ref.watch(routerProvider),
      debugShowMaterialGrid: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'SE'),
        Locale('en', 'US'),
      ],
      builder: (context, child) {
        final colors = Theme.of(context).colorScheme;

        return Shimmer(
          linearGradient: LinearGradient(
            colors: [
              Color.lerp(colors.surface, colors.primary, 0.05)!,
              Color.lerp(colors.surface, colors.primary, 0.1)!,
              Color.lerp(colors.surface, colors.primary, 0.05)!,
            ],
            stops: const [0.1, 0.3, 0.4],
            begin: const Alignment(-1.0, -0.3),
            end: const Alignment(1.0, 0.3),
            tileMode: TileMode.clamp,
          ),
          child: child!,
        );
      },
    );
  }
}
