import 'package:expensetrack/core/color_schemes.dart';
import 'package:expensetrack/core/router.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.from(colorScheme: lightColorScheme, useMaterial3: true),
      darkTheme: ThemeData.from(colorScheme: darkColorScheme, useMaterial3: true),
      routerConfig: ref.watch(routerProvider),
      builder: (context, child) {
        final colors = Theme.of(context).colorScheme;

        return Shimmer(
          linearGradient: LinearGradient(
            colors: [
              Color.lerp(colors.background, colors.primary, 0.05)!,
              Color.lerp(colors.background, colors.primary, 0.1)!,
              Color.lerp(colors.background, colors.primary, 0.05)!,
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
