import 'package:flutter/material.dart';

class TetherColors {
  static const Color darkBackground = Color(0xFF0A0A0A);
  static const Color darkChatBackground = Color(0xFF0F0F0F);
  static const Color darkReceivedMessage = Color(0xFF1F1F1F);
  static const Color darkSentMessage = Color(0xFF2A2A2A);
  static const Color darkBorder = Color(0xFF222222);
  static const Color darkTextPrimary = Color(0xFFFFFFFF);
  static const Color darkTextSecondary = Color(0xFF888888);
  static const Color cyan = Color(0xFF00D4FF);
  static const Color cyanDark = Color(0xFF00A8CC);
}

class TetherTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: TetherColors.darkBackground,
      fontFamily: 'NovaRound',
      colorScheme: const ColorScheme.dark(
        primary: TetherColors.cyan,
        secondary: TetherColors.cyanDark,
        surface: TetherColors.darkChatBackground,
        background: TetherColors.darkBackground,
        onPrimary: TetherColors.darkTextPrimary,
        onSecondary: TetherColors.darkTextPrimary,
        onSurface: TetherColors.darkTextPrimary,
        onBackground: TetherColors.darkTextPrimary,
        outline: TetherColors.darkBorder,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: TetherColors.darkBackground,
        foregroundColor: TetherColors.darkTextPrimary,
        elevation: 0,
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: TetherColors.cyan,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
