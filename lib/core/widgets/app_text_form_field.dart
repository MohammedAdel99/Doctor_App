import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contrntPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor; 
  const AppTextFormField({
    Key? key,
    this.contrntPadding,
    this.focusedBorder,
    this.enabledBorder,
    required this.hintText,
    this.hintStyle,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:contrntPadding ?? EdgeInsets.symmetric(vertical: 18.h , horizontal: 20.w),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.mainBlue,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.r)
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.lighterGray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.r)
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular ,
        suffixIcon:suffixIcon ,
        
        fillColor: backgroundColor?? ColorsManager.moreLightGray ,
        filled: true,
        
      ),
      obscureText:isObscureText ?? false,
      style:TextStyles.font14DarkBlueMedium ,
      
    );
  }
}
