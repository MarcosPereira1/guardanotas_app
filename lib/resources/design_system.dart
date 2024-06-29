import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFF1E1E1E);
  static const Color primaryText = Color(0xFF6366F1);
  static const Color inputBackground = Color(0xFF27272C);
  static const Color placeholderText = Color(0xFF9CA3AF);
}

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontFamily: 'PassThrough',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle inputText = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );
  static const TextStyle placeholder = TextStyle(
    fontSize: 16,
    color: AppColors.placeholderText,
  );
  static const TextStyle button = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );
}

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      background: AppColors.background,
    ),
    textTheme: const TextTheme(
      displayLarge: AppTextStyles.title,
    ),
    fontFamily: 'PassThrough',
  );
}
