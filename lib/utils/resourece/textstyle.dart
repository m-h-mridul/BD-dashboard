import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/ColorManager.dart';
import 'package:flutter/material.dart';

class TextStyleManager {
  static TextStyle optioncolos18 = TextStyle(
      fontSize: MediaQuerypage.fontsize! * 18,
      fontWeight: FontWeight.w500,
      color: ColorManager.optiontext);

  static TextStyle red22 = TextStyle(
      fontSize: MediaQuerypage.fontsize! * 22,
      fontWeight: FontWeight.w800,
      color: ColorManager.red);
  static TextStyle blue18 = TextStyle(
      fontSize: MediaQuerypage.fontsize! * 18,
      fontWeight: FontWeight.w500,
      color: ColorManager.optiontext);

  static  TextStyle white18 = TextStyle(fontSize: MediaQuerypage.fontsize! * 18, color: Colors.white);
  static  TextStyle white16 = TextStyle(fontSize: MediaQuerypage.fontsize! * 16, color: Colors.white);
  static  TextStyle black18 = TextStyle(fontSize:  MediaQuerypage.fontsize! * 18, color: Colors.black);
  static  TextStyle black16 = TextStyle(fontSize:  MediaQuerypage.fontsize! * 16, color: Colors.black);
}
