import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce/features/authentications/screens/onboarding/onboarding_screen.dart';
import 'package:my_eccommerce/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: LAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: LAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
    
    
  }
}