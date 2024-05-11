import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/appbar_theme.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/bottom_sheet_theme.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/checkbox_theme.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/chip_theme.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/elevated_button_theme.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/outlined_button_theme.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/text_field_theme.dart';
import 'package:project4_ngotband_quadat/utils/theme/custome_themes/text_theme.dart';

class MyAppTheme{
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    appBarTheme: MyAppBarTheme.lightAppbarTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme:TextFormFeildTheme.lightInputDecoraionTheme,
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.darkAppbarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme:TextFormFeildTheme.darkInputDecoraionTheme,
  );
}