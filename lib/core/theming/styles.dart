import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackBold =
      const TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeightHelper.bold);
  static TextStyle font33BlueBold =
      const TextStyle(fontSize: 33, color: ColorsManager.mainBlue, fontWeight: FontWeightHelper.bold);
  static TextStyle font13BlueRegular =
      const TextStyle(fontSize: 13, color: ColorsManager.mainBlue, fontWeight: FontWeightHelper.regular);    
   static TextStyle font13BlueSemiBold =
      const TextStyle(fontSize: 13, color: ColorsManager.mainBlue, fontWeight: FontWeightHelper.semiBold);        
  static TextStyle font24BlueBold =
      const TextStyle(fontSize: 24, color: ColorsManager.mainBlue, fontWeight: FontWeightHelper.bold);
  static TextStyle font13DarkBlueRegular =
      const TextStyle(fontSize: 13, color: ColorsManager.darkBlue, fontWeight: FontWeightHelper.regular);
  static TextStyle font13DarkBlueMedium =
      const TextStyle(fontSize: 13, color: ColorsManager.darkBlue, fontWeight: FontWeightHelper.medium);    
  static TextStyle font14DarkBlueMedium =
      const TextStyle(fontSize: 14, color: ColorsManager.darkBlue, fontWeight: FontWeightHelper.medium);                            
  static TextStyle font13GrayRegular =
      const TextStyle(fontSize: 13, color: ColorsManager.gray, fontWeight: FontWeightHelper.regular);  
   static TextStyle font14GrayRegular =
      const TextStyle(fontSize: 14, color: ColorsManager.gray, fontWeight: FontWeightHelper.regular);      
  static TextStyle font14LightGrayRegular =
      const TextStyle(fontSize: 14, color: ColorsManager.lightGray, fontWeight: FontWeightHelper.regular);        
  static TextStyle font16WhiteSemiBold =
      const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeightHelper.semiBold);  
}
