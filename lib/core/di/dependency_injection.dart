import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/signUp/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/login/data/repository/login_repository.dart';
import 'package:doctor_app/features/signUp/data/repository/sign_up_repository.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  //Dio & ApiServices
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //Login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //Signup
  getIt.registerLazySingleton<SignupRepository>(() => SignupRepository(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
