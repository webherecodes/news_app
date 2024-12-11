import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'JosefinSans',
      brightness: Brightness.light,
      primaryColor: Color.fromARGB(255, 165, 28, 228), // Light beige
      scaffoldBackgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
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
