import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/presentation/widgets/terms_and_conditions_text.dart';
import 'package:doctor_app/features/login/presentation/widgets/already_have_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


 

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:30.h ,horizontal: 30.w ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('Welcome Back', style: TextStyles.font24BlueBold ,),
                SizedBox(height: 8.h,),
                Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.', style: TextStyles.font14GrayRegular,),
                SizedBox(height: 36.h),
                Form(
                  key: formkey ,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      SizedBox(height: 18.h,),
                      AppTextFormField(hintText: 'Password', isObscureText: isObscureText ,suffixIcon: GestureDetector( onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),)),


                    ],)),
                    SizedBox(height: 24.h,),
                    Align(alignment: AlignmentDirectional.centerEnd,child:Text('Forget Password?',style: TextStyles.font13BlueRegular,),),
                    SizedBox(height: 40.h,),
                    AppTextButton(buttonText: 'Login', onPressed: (){}),
                    SizedBox(height: 16.h,),
                    TermsAndConditionsText(),
                    SizedBox(height: 60.h),
                    AlreadyHaveAccountText(),


              ]
                  

            ),
            
          ),
        )),
    );
  }
}