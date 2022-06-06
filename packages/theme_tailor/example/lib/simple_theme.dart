import 'package:example/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'simple_theme.tailor.dart';

const _lol = [AppColors.blue, AppColors.orange];

/// Use @tailor annotation with default values of ['light', 'dark']
@tailor
class $_SimpleTheme {
  static List<Color> background = [AppColors.white, AppColors.black];
  static List<Color> surface = _lol;
  static List<Color> appBar = [AppColors.orange, AppColors.blue];
  static List<TextStyle> h1 = const [TextStyle(), TextStyle()];
  static List<TextStyle> h2 = const [TextStyle(), TextStyle()];
}

class CustomColorEncoder extends SimpleThemeEncoder<Color> {
  const CustomColorEncoder();
}

/// Use @Tailor annotation to declare custom themes or different
/// quantity of themes than the default 2 (light and dark)
@Tailor(themes: ['superLight', 'amoledDark'])
@CustomColorEncoder()
class $_SimpleThemeVariant2 {
  static List background = [AppColors.white, AppColors.black];
  static List<Color?> surface = _lol;
  static List<Color> appBar = [AppColors.orange, AppColors.blue];
  static List<TextStyle> h1 = const [TextStyle(), TextStyle()];
  static List<TextStyle> h2 = const [TextStyle(), TextStyle()];
}
