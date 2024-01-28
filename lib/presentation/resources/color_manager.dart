import 'package:flutter/material.dart';

class ColorManager{
  static Color primary = HexColor.fromHex("#CC6A4C");
  static Color secondary= HexColor.fromHex("#93748E");
  static Color blackColor = Colors.black;
  static Color darkColor = HexColor.fromHex("#F7E4D2");
  static Color lightColor= HexColor.fromHex("#FFFBF4");

}
  extension HexColor on Color{
    static Color fromHex(String hexColorString){
      hexColorString = hexColorString.replaceAll("#", "");

      if(hexColorString.length == 6){
        hexColorString = "FF" + hexColorString;

      }
      return Color(int.parse(hexColorString, radix: 16));
    }
}
