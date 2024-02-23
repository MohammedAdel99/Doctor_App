import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        
        
        text:TextSpan(
          
      
          children: [
            TextSpan(text: 'Already Have Account? ', style: TextStyles.font13DarkBlueRegular),
            TextSpan(text: ' Sign Up' , style: TextStyles.font13BlueSemiBold)
          ]
        ) ,
        
        ),
    );
  }
}