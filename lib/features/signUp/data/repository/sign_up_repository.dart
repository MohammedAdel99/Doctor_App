import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/signUp/data/models/sign_up_response.dart';
import 'package:doctor_app/features/signUp/data/models/sign_up_request_body.dart';

class SignupRepository {
  final ApiService _apiService;
  SignupRepository(
    this._apiService,
  );

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }}
