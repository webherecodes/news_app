import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../CustomWidgets/AppBar/appbar.dart';
import '../../Themes/themeManager.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'News App',
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: themeManager.toggleTheme,
          ),
        ],
      ),
      body: Container(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
