import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/theme/color_schemes.dart';
import 'package:expensetrack/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

/// Apply styles that are shared between light and dark themes.
ThemeData _baseTheme(ColorScheme colorScheme) {
  return ThemeData.from(colorScheme: colorScheme).copyWith(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    cardTheme: CardTheme(
      color: colorScheme.surfaceContainerHighest,
      elevation: 0,
    ),
  );
}

ThemeData get lightTheme => _baseTheme(lightColorScheme).copyWith(
  extensions: [lightCustomColors],
);

ThemeData get  darkTheme => _baseTheme(darkColorScheme).copyWith(
  extensions: [darkCustomColors],
);
