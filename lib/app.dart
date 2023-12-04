import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      theme: LAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: LAppTheme.darkTheme,
    );
  }
}