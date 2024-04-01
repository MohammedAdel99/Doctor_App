import 'sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/features/signUp/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/signUp/data/repository/sign_up_repository.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepository _signupRepository;
  SignupCubit(
    this._signupRepository,
  ) : super(const SignupState.initial());
  final formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

  void emitSignupStates() async {
    emit(const SignupState.loading());
    final response = await _signupRepository.signup(SignupRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmationController.text,
      gender: 0,

      
      
      
      ));
    response.when(success: (signupResponse) {
      emit(SignupState.success(signupResponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
