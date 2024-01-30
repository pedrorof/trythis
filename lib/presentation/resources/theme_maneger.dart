import 'package:flutter/material.dart';
import 'package:trythis/presentation/resources/color_manager.dart';
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
  );
}
