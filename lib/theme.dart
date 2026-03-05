import 'package:flutter/material.dart';

class AppColors {
  static Color primaryBrownColor = Color.fromRGBO(111, 78, 55, 1);
  static Color primaryDarkBrownColor = Color.fromRGBO(92, 64, 51, 1);
  static Color secondaryCreamColor = Color.fromRGBO(248, 245, 242, 1);
  static Color appBarColor = Color.fromRGBO(241, 233, 223, 1);
  static Color scaffoldColor = Color.fromRGBO(242, 233, 224, 1);
  static Color buttonColor = Color.fromRGBO(230, 126, 34, 1);
  static Color cardBgColor = Color.fromRGBO(255, 255, 255, 1);
  static Color borderColor = Color.fromRGBO(220, 214, 207, 1);
  static Color starColor = Color.fromRGBO(255, 183, 0, 1);
  static Color textBrownColor = Color.fromRGBO(111, 78, 55, 1);
  static Color cardBGColor = Color.fromRGBO(253, 247, 238, 1);
}

ThemeData primaryTheme = ThemeData(
  primaryColor: AppColors.primaryBrownColor,
  scaffoldBackgroundColor: AppColors.scaffoldColor,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.buttonColor),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.appBarColor,
    foregroundColor: AppColors.primaryBrownColor,
    centerTitle: true,
    elevation: 1,
    shadowColor: AppColors.primaryBrownColor,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: AppColors.textBrownColor, fontSize: 16),
    headlineMedium: TextStyle(
      color: AppColors.textBrownColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.textBrownColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      color: AppColors.textBrownColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondaryCreamColor,
    border: InputBorder.none,
    prefixIconColor: AppColors.buttonColor,
    suffixIconColor: AppColors.buttonColor,
    hintStyle: TextStyle(color: AppColors.secondaryCreamColor),
  )
);
