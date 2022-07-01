import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:theme_tailor_toolbox/src/util.dart';

class ColorEncoder extends ThemeEncoder<Color> {
  const ColorEncoder();

  @override
  Color lerp(Color a, Color b, double t) => lerpColor(a, b, t);
}

class ColorEncoderNullable extends ThemeEncoder<Color?> {
  const ColorEncoderNullable();

  @override
  Color? lerp(Color? a, Color? b, double t) => Color.lerp(a, b, t);
}
