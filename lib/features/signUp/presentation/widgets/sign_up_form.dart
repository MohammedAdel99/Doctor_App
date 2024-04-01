import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/core/widgets/password_validations.dart';
import 'package:doctor_app/features/signUp/logic/cubit/sign_up_cubit.dart';

class SignupForm extends StatefulWidget {
  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;

  bool isPasswordConfirmationObscureText = true;

  late TextEditingController passwordController;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<SignupCubit>().formkey,
        child: Column(
          children: [
            AppTextFormField(
                hintText: 'Name',
                controller: context.read<SignupCubit>().nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid name';
                  }
                }),
            SizedBox(
              height: 18.h,
            ),
            AppTextFormField(
                hintText: 'Email',
                controller: context.read<SignupCubit>().emailController,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                }),
            SizedBox(
              height: 18.h,
            ),
            AppTextFormField(
                hintText: 'Phone Number',
                controller: context.read<SignupCubit>().phoneController,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isPhoneNumberValid(value)) {
                    return 'Please enter a valid phone number';
                  }
                }),
            SizedBox(
              height: 18.h,
            ),
            AppTextFormField(
                hintText: 'Password',
                controller: context.read<SignupCubit>().passwordController,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isPasswordValid(value)) {
                    return 'Please enter a valid password';
                  }
                },
                isObscureText: isPasswordObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPasswordObscureText = !isPasswordObscureText;
                });
              },
               child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            
                )),
            SizedBox(
              height: 18.h,
            ),
            AppTextFormField(
                hintText: 'Password Confirmation',
                controller: context.read<SignupCubit>().passwordConfirmationController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid password';
                  } else if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return 'Passwords do not match';
                  }},
                isObscureText: isPasswordConfirmationObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPasswordConfirmationObscureText = !isPasswordConfirmationObscureText;
                });
              },
               child: Icon(
                isPasswordConfirmationObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            
                )
                
                ),
            SizedBox(
              height: 24.h,
            ),
            
            PasswordValidations(
                hasLowerCase: hasLowercase,
                hasUpperCase: hasUppercase,
                hasSpecialCharacters: hasSpecialCharacters,
                hasNumber: hasNumber,
                hasMinLength: hasMinLength)
          ],
        ));
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
  


