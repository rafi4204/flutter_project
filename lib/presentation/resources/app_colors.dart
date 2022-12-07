import 'package:flutter/material.dart';

class AppColors {
  final Color background;
  final Color surface;
  final Color accent;
  final Color text;
  final Color primary;

  const AppColors({
    required this.background,
    required this.surface,
    required this.accent,
    required this.text,
    required this.primary,
  });
}

const colorsLight = AppColors(
    background: Colors.white,
    surface: Colors.white,
    accent: Color(0xFFE0E1E3),
    text: Colors.black,
    primary: Color(0xFFAE0721));

const colorsDark = AppColors(
    background: Colors.black54,
    surface: Color(0xFF222222),
    accent: Colors.lightBlueAccent,
    text: Colors.white,
    primary: Color(0xFFAE0721));

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    final brightness = Theme.of(this).brightness;
    switch (brightness) {
      case Brightness.light:
        return colorsLight;
      case Brightness.dark:
        return colorsDark;
      default:
        return colorsLight;
    }
  }
}
