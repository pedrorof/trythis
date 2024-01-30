import 'dart:ui';

import 'package:trythis/presentation/resources/font_manager.dart';

TextStyle _getTexStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color){
  return TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);
}
TextStyle getRegularStyle({double fontSize = FontSizeManager.s12, required Color color}){
  return _getTexStyle(fontSize, FontConstants.fontFamily,  FontWeightManager.regular,color);
  
}TextStyle getLightStyle({double fontSize = FontSizeManager.s12, required Color color}){
  return _getTexStyle(fontSize, FontConstants.fontFamily,  FontWeightManager.light,color);
}
TextStyle getBoldStyle({double fontSize = FontSizeManager.s12, required Color color}){
  return _getTexStyle(fontSize, FontConstants.fontFamily,  FontWeightManager.bold,color);
}
TextStyle getSemiBoldStyle({double fontSize = FontSizeManager.s12, required Color color}){
  return _getTexStyle(fontSize, FontConstants.fontFamily,  FontWeightManager.semiBold,color);
}