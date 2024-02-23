import 'core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Doctor App',
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: AppRouter.generateRoute,
        theme: ThemeData(primaryColor: ColorsManager.mainBlue),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
