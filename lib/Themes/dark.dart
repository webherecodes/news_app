import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(0xFFF48FB1), // Accent color
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1C1C1C),
        iconTheme: IconThemeData(color: Color(0xFFFAF3E0)),
        titleTextStyle: TextStyle(
          color: Color(0xFFFAF3E0),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Color(0xFFFAF3E0), fontSize: 16),
        bodyMedium: TextStyle(color: Color(0xFFFAF3E0), fontSize: 14),
        titleLarge: TextStyle(
          color: Color(0xFFFAF3E0),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
