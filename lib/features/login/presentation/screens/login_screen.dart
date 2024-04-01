import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/presentation/widgets/email_and_password.dart';
import 'package:doctor_app/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:doctor_app/features/login/presentation/widgets/dont_have_account_text.dart';
import 'package:doctor_app/features/login/presentation/widgets/terms_and_conditions_text.dart';




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GrayRegular,
            ),
            SizedBox(height: 36.h),
            const EmailAndPassword(),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'Forget Password?',
                style: TextStyles.font13BlueRegular,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            AppTextButton(
                buttonText: 'Login',
                onPressed: () {
                  validateThenDoLogin(context);
                }),
            SizedBox(
              height: 16.h,
            ),
            const TermsAndConditionsText(),
            SizedBox(height: 16.h),
            const DontHaveAccountText(),
            const LoginBlocListener()
          ]),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
