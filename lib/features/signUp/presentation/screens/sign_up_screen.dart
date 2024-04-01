import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/features/signUp/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/signUp/presentation/widgets/sign_up_form.dart';
import 'package:doctor_app/features/signUp/presentation/widgets/already_have_account.dart';
import 'package:doctor_app/features/signUp/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:doctor_app/features/login/presentation/widgets/terms_and_conditions_text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        'Create Account',
                        style: TextStyles.font24BlueBold,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                        style: TextStyles.font14GrayRegular,
                      ),
                      SizedBox(height: 36.h),
                      SignupForm(),
                      SizedBox(
                        height: 40.h,
                      ),
                      AppTextButton(
                          buttonText: 'Create Account',
                          onPressed: () {
                            validateThenDoSignup(context);
                          }),
                      SizedBox(
                        height: 16.h,
                      ),
                       const TermsAndConditionsText(),
                    SizedBox(height: 16.h),
                    const AlreadyHaveAccountText(),
                      const SignupBlocListener()
                    ])))));
  }
}

void validateThenDoSignup(BuildContext context) {
  if (context.read<SignupCubit>().formkey.currentState!.validate()) {
    context.read<SignupCubit>().emitSignupStates();
  }
}
