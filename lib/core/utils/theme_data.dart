import 'package:flutter/material.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';

class Styles {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor:
          isDarkTheme ? AppColors.darkScaffoldColor : AppColors.lightScaffold,
      cardColor:
          isDarkTheme ? AppColors.darkCardColor : AppColors.lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        backgroundColor:
            isDarkTheme ? AppColors.darkScaffoldColor : AppColors.lightScaffold,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.cBeg,
        selectionColor:
            isDarkTheme ? AppColors.darkScaffoldColor : AppColors.lightScaffold,
      ),
    );
  }
}
