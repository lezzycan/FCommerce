import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/custom_themes.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/elevatedbutton_custom_theme.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:my_eccommerce/utils/theme/custom_themes/textfield_theme.dart';

class LAppTheme {
  LAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: LTextTheme.lightTextTheme,
    chipTheme: LChipTheme.lightChipTheme,
    checkboxTheme: LCheckBoxTheme.lightCheckBoxTheme,
    appBarTheme: LAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: LBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: LTextFieldTheme.lightInputDecoration,
    elevatedButtonTheme: LElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.lightOutlinedButtonTheme
    
  );
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: LTextTheme.darktTextTheme,
    scaffoldBackgroundColor: Colors.black,
    chipTheme: LChipTheme.darkChipTheme,
    checkboxTheme: LCheckBoxTheme.darkCheckBoxTheme,
    elevatedButtonTheme: LElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.darkOutlinedButtonTheme

  );


}
