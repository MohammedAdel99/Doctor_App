import 'package:flutter/material.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}
