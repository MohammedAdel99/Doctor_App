import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/helpers/extensions.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        
        
        text:TextSpan(
          
      
          children: [
            TextSpan(text: 'Already have an account? ', style: TextStyles.font13DarkBlueRegular),
            TextSpan(text: ' Login' , style: TextStyles.font13BlueSemiBold , recognizer: TapGestureRecognizer()..onTap = (){context.pushReplacementNamed(Routes.loginScreen);})
          ]
        ) ,
        
        ),
    ); 
  }
}