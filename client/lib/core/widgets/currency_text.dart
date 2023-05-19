import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

/// A text that displays a [num] as a currency and applies style.
class CurrencyText extends StatelessWidget {
  const CurrencyText(
    this.value, {
    super.key,
    this.style,
  });

  final num value;

  /// The base style of the text.
  ///
  /// A color will be applied to the text depending on the [value].
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = theme.extension<CustomColors>()!;

    return Text(
      value.formatCurrency(),
      style: (style ?? const TextStyle()).copyWith(
        color: value.isNegative ? customColors.negative : customColors.positive,
      ),
    );
  }
}
