import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Themes/themeManager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('News Reader App'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: themeManager.toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to News Reader App',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
