import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text:TextSpan(
          children: [
            TextSpan(text: 'By logging, you agree to our', style: TextStyles.font13GrayRegular),
            TextSpan(text: ' Terms & Conditions\n ' , style: TextStyles.font13DarkBlueMedium),
            TextSpan(text: ' and', style: TextStyles.font13GrayRegular.copyWith(height: 1.8)),
            TextSpan(text: ' Privacy Policy' , style: TextStyles.font13DarkBlueMedium)
          ]
        ) ,),
    );
  }
}