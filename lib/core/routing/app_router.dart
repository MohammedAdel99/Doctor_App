import 'routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/core/di/dependency_injection.dart';
import '../../features/login/presentation/screens/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/signUp/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/home/presentation/screens/home_screen.dart';
import 'package:doctor_app/features/signUp/presentation/screens/sign_up_screen.dart';







class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: LoginScreen(),
                ));
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: SignupScreen(),
        ));               
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());          
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
