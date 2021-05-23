import 'package:flutter/material.dart';
import 'package:my_traveller_app/theme/theme_mode_manager.dart';
import 'package:my_traveller_app/views/launch_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeModeManager(
      defaultThemeMode: ThemeMode.light,
      builder: (themeMode) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeMode,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: LaunchPage(),
        );
      },
    );
  }
}
