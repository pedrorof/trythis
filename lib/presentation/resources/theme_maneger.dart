import 'package:flutter/material.dart';
import 'package:trythis/presentation/resources/color_manager.dart';
import 'package:trythis/presentation/resources/font_manager.dart';
import 'package:trythis/presentation/resources/styles_manager.dart';
import 'package:trythis/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  //main color

  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorDark: ColorManager.darkColor,
    disabledColor: Colors.grey,
    cardTheme: const CardTheme(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: AppSize.s4,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
        color: Colors.white,
        fontSize: FontSizeManager.s16,
      ),
    ),
  );
}
