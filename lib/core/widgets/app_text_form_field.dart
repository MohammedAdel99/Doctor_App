import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contrntPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Function(String?) validator;
  const AppTextFormField({
    Key? key,
    this.controller,
    this.contrntPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    required this.hintText,
    this.hintStyle,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contrntPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.mainBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.r)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.lighterGray,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.r)),
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.r)),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.r)),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
