import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xFF9C27B0), // Light beige
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFFFAF3E0),
        iconTheme: IconThemeData(color: Color(0xFF1C1C1C)),
        titleTextStyle: TextStyle(
          color: Color(0xFF1C1C1C),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Color(0xFF1C1C1C), fontSize: 16),
        bodyMedium: TextStyle(color: Color(0xFF1C1C1C), fontSize: 14),
        titleLarge: TextStyle(
          color: Color(0xFF1C1C1C),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
