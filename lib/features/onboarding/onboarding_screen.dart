import 'package:flutter/material.dart';
import 'widgets/doctor_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/features/onboarding/widgets/get_started_button.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: Column(
            children:[
            const DoctorLogoAndName(),
            SizedBox(height:30.h),
            const DoctorImageAndText(),
            
              Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style:TextStyles.font13grayReguler),
              const GetStartedButton(),  
            ])
          ),
        ),
      ),

    );
  }
}