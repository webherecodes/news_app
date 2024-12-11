import 'package:flutter/material.dart';
import 'package:newsapp/Login/welcomePage.dart';
import 'package:provider/provider.dart';
import 'Themes/themeManager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (context, themeManager, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeManager.lightTheme,
            darkTheme: themeManager.darkTheme,
            themeMode: themeManager.themeMode,
            home: WelcomePage(),
          );
        },
      ),
    );
  }
}
