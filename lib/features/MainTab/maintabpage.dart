import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapp/features/Home/presentation/Pages/HomePage.dart';
import 'package:newsapp/features/Pages/SearchPage.dart';
import 'package:provider/provider.dart';

import '../../CustomWidgets/AppBar/appbar.dart';
import '../../CustomWidgets/Buttons/tabbutton.dart';
import '../../config/theme/Themes/themeManager.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomePage();

  bool _isVisible = true;
  Timer? _hideTimer;

  void _startHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 3), () {
      setState(() {
        _isVisible = false;
      });
    });
  }

  @override
  void initState() {
    _startHideTimer(); // Restart the timer
    super.initState();
  }

  @override
  void dispose() {
    _hideTimer?.cancel(); // Dispose of the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final themeManager = Provider.of<ThemeManager>(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            _isVisible = !_isVisible; // Show the bars when the screen is tapped
          });
          _startHideTimer(); // Restart the timer
        },
        child: SafeArea(
          child: Stack(
            children: [
              PageStorage(
                bucket: storageBucket,
                child: selectPageView,
              ),
              if (_isVisible)
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomAppBar(
                    title: 'News App',
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.brightness_6),
                        onPressed: themeManager.toggleTheme,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: _isVisible
          ? SizedBox(
              height: 60,
              width: 60,
              child: FloatingActionButton(
                onPressed: () {
                  if (selectTab != 2) {
                    selectTab = 2;
                    selectPageView = HomePage();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                shape: const CircleBorder(),
                backgroundColor: selectTab == 2
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                child: Image.asset(
                  "assets/images/icons/tab_home.png",
                  width: 27,
                  height: 27,
                  color: selectTab == 2
                      ? Colors.white
                      : Theme.of(context).primaryColor,
                ),
              ),
            )
          : null,
      bottomNavigationBar: _isVisible
          ? BottomAppBar(
              color: isDarkTheme ? Color(0xFF1C1C1C) : Colors.white,
              surfaceTintColor: isDarkTheme ? Color(0xFF1C1C1C) : Colors.white,
              shadowColor: Colors.black,
              elevation: 1,
              notchMargin: 12,
              height: 64,
              shape: const CircularNotchedRectangle(),
              child: SafeArea(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TabButton(
                          onTap: () {
                            if (selectTab != 0) {
                              selectTab = 0;
                              selectPageView = HomePage();
                            }
                            if (mounted) {
                              setState(() {});
                            }
                          },
                          title: "New Post",
                          icon: "assets/images/icons/tab_post.png",
                          isSelected: selectTab == 0),
                      TabButton(
                          onTap: () {
                            if (selectTab != 1) {
                              selectTab = 1;
                              selectPageView = SearchPage();
                            }
                            if (mounted) {
                              setState(() {});
                            }
                          },
                          title: "Search",
                          icon: "assets/images/icons/tab_search.png",
                          isSelected: selectTab == 1),
                      const SizedBox(
                        width: 40,
                        height: 40,
                      ),
                      TabButton(
                          onTap: () {
                            if (selectTab != 3) {
                              selectTab = 3;
                              selectPageView = HomePage();
                            }
                            if (mounted) {
                              setState(() {});
                            }
                          },
                          title: "Unread",
                          icon: "assets/images/icons/tab_unread.png",
                          isSelected: selectTab == 3),
                      TabButton(
                          onTap: () {
                            if (selectTab != 4) {
                              selectTab = 4;
                              selectPageView = HomePage();
                            }
                            if (mounted) {
                              setState(() {});
                            }
                          },
                          title: "Reload",
                          icon: "assets/images/icons/tab_reload.png",
                          isSelected: selectTab == 4),
                    ]),
              ),
            )
          : null,
    );
  }
}
