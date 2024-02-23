import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        SvgPicture.asset('assets/svgs/logoWithObacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white,Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14,0.4]
              )),
          child: Image.asset('assets/images/doctor.png'), 
                  
        ),
        Positioned(
          bottom:26,
          left:0,
          right:0,
          child: Text('Best Doctor\n Apointment App',textAlign: TextAlign.center,style: TextStyles.font33BlueBold.copyWith(height: 1.4,),))

      ]
      
    );
  }
}