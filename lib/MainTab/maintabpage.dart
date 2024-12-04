import 'package:flutter/material.dart';
import 'package:newsapp/Home/Pages/HomePage.dart';
import 'package:newsapp/Search/Pages/SearchPage.dart';

import '../CustomWidgets/Buttons/tabbutton.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomePage();

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: PageStorage(
        bucket: storageBucket,
        child: selectPageView,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
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
          backgroundColor:
              selectTab == 2 ? Colors.white : Theme.of(context).primaryColor,
          child: Image.asset(
            "assets/images/tab_post.png",
            width: 27,
            height: 27,
            color:
                selectTab == 2 ? Theme.of(context).primaryColor : Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: isDarkTheme ? Color(0xFF1C1C1C) : Colors.white,
        surfaceTintColor: isDarkTheme ? Color(0xFF1C1C1C) : Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
                title: "Menu",
                icon: "assets/images/tab_menu.png",
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
                icon: "assets/images/tab_search.png",
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
                icon: "assets/images/tab_unread.png",
                isSelected: selectTab == 3),
            TabButton(
                onTap: () {
                  if (selectTab != 4) {
                    selectTab = 4;
                    selectPageView = Container();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Reload",
                icon: "assets/images/tab_reload.png",
                isSelected: selectTab == 4),
          ]),
        ),
      ),
    );
  }
}
