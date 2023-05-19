import 'package:flutter/material.dart';

CustomColors lightCustomColors = const CustomColors(
  sourcePositive: Color(0xFF002745),
  positive: Color(0xFF0062A1),
  onPositive: Color(0xFFFFFFFF),
  positiveContainer: Color(0xFFD0E4FF),
  onPositiveContainer: Color(0xFF001D35),
  sourceNegative: Color(0xFFBA1A1A),
  negative: Color(0xFFBA1A1A),
  onNegative: Color(0xFFFFFFFF),
  negativeContainer: Color(0xFFFFDAD5),
  onNegativeContainer: Color(0xFF410002),
);

CustomColors darkCustomColors = const CustomColors(
  sourcePositive: Color(0xFF002745),
  positive: Color(0xFF9CCAFF),
  onPositive: Color(0xFF003257),
  positiveContainer: Color(0xFF00497B),
  onPositiveContainer: Color(0xFFD0E4FF),
  sourceNegative: Color(0xFFBA1A1A),
  negative: Color(0xFFFFB4AB),
  onNegative: Color(0xFF690004),
  negativeContainer: Color(0xFF930009),
  onNegativeContainer: Color(0xFFFFDAD5),
);



/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourcePositive,
    required this.positive,
    required this.onPositive,
    required this.positiveContainer,
    required this.onPositiveContainer,
    required this.sourceNegative,
    required this.negative,
    required this.onNegative,
    required this.negativeContainer,
    required this.onNegativeContainer,
  });

  final Color? sourcePositive;
  final Color? positive;
  final Color? onPositive;
  final Color? positiveContainer;
  final Color? onPositiveContainer;
  final Color? sourceNegative;
  final Color? negative;
  final Color? onNegative;
  final Color? negativeContainer;
  final Color? onNegativeContainer;

  @override
  CustomColors copyWith({
    Color? sourcePositive,
    Color? positive,
    Color? onPositive,
    Color? positiveContainer,
    Color? onPositiveContainer,
    Color? sourceNegative,
    Color? negative,
    Color? onNegative,
    Color? negativeContainer,
    Color? onNegativeContainer,
  }) {
    return CustomColors(
      sourcePositive: sourcePositive ?? this.sourcePositive,
      positive: positive ?? this.positive,
      onPositive: onPositive ?? this.onPositive,
      positiveContainer: positiveContainer ?? this.positiveContainer,
      onPositiveContainer: onPositiveContainer ?? this.onPositiveContainer,
      sourceNegative: sourceNegative ?? this.sourceNegative,
      negative: negative ?? this.negative,
      onNegative: onNegative ?? this.onNegative,
      negativeContainer: negativeContainer ?? this.negativeContainer,
      onNegativeContainer: onNegativeContainer ?? this.onNegativeContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourcePositive: Color.lerp(sourcePositive, other.sourcePositive, t),
      positive: Color.lerp(positive, other.positive, t),
      onPositive: Color.lerp(onPositive, other.onPositive, t),
      positiveContainer: Color.lerp(positiveContainer, other.positiveContainer, t),
      onPositiveContainer: Color.lerp(onPositiveContainer, other.onPositiveContainer, t),
      sourceNegative: Color.lerp(sourceNegative, other.sourceNegative, t),
      negative: Color.lerp(negative, other.negative, t),
      onNegative: Color.lerp(onNegative, other.onNegative, t),
      negativeContainer: Color.lerp(negativeContainer, other.negativeContainer, t),
      onNegativeContainer: Color.lerp(onNegativeContainer, other.onNegativeContainer, t),
    );
  }
}