import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/colors.dart';

class TextStyles {
  static TextStyle font24Black700Weight =
      const TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700);
  static TextStyle font32BlueBold =
      const TextStyle(fontSize: 33, color: ColorManager.mainBlue, fontWeight: FontWeight.bold);
  static TextStyle font13grayReguler =
      const TextStyle(fontSize: 13, color: ColorManager.gray, fontWeight: FontWeight.normal);  
  static TextStyle font16WhiteSemibold =
      const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.normal);          
}
