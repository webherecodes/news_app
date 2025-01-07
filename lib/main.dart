import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/features/Home/presentation/Pages/HomePage.dart';
import 'package:newsapp/features/Home/presentation/bloc/news/remote/news_bloc.dart';
import 'package:newsapp/features/Home/presentation/bloc/news/remote/news_event.dart';
import 'package:newsapp/features/Login/welcomePage.dart';
import 'package:newsapp/injection_container.dart';
import 'package:provider/provider.dart';
import 'config/theme/Themes/themeManager.dart';

void main() async {
  await initializeDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (context, themeManager, child) {
          return BlocProvider<NewsBloc>(
            create: (context) => sl()..add(const GetNews()),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: themeManager.lightTheme,
              darkTheme: themeManager.darkTheme,
              themeMode: themeManager.themeMode,
              home: HomePage(),
            ),
          );
        },
      ),
    );
  }
}
