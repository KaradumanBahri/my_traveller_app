import 'package:flutter/material.dart';
import 'package:ogrenci_app/pages/launch.dart';
import 'package:flutter/material.dart';
import 'package:ogrenci_app/theme/theme_mode_manager.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeModeManager(
        defaultThemeMode: ThemeMode.light,
        builder: (ThemeMode){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'flutter demo',
            themeMode: ThemeMode,
            theme:  ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: LaunchPage(),
          );
    },
    );
  }
}


