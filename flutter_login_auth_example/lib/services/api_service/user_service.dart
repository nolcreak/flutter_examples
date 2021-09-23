import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './api_service.dart';

import '../../routes/app_routes.dart';
import '../../models/login_model.dart';
import '../../constants/api_constants.dart';
import '../../utils/extensions/getx_extensions.dart';
import '../../services/api_service/shared_prefs_service.dart';

class UserService {
  final Dio _dio = APIService().dio;
  final SharedPreferences _prefs = Get.find<SharedPrefsService>().prefs;

  // This is the ONLY account that can login.
  final String defaultEmail = 'eve.holt@reqres.in';
  final String defaultPassword = 'cityslicka';

  Future login(LoginModel loginModel) async {
    try {
      final result = await _dio.post(
        APIConstants.LOGIN_URL,
        data: {
          'email': loginModel.email,
          'password': loginModel.password,
        },
      );

      if (result.statusCode == HttpStatus.ok) {
        return result.data;
      } else {
        Get.showFlutterSnackbar(message: result.toString());
      }
    } on DioError catch (e) {
      final errorMessage = e.response!.data['error'];
      Get.showFlutterSnackbar(message: '$errorMessage.');
    }
  }

  void logout({required bool removeData}) async {
    if (removeData) {
      final emailResult = await _prefs.remove('email');
      final tokenResult = await _prefs.remove('token');

      if (emailResult && tokenResult) {
        await Get.offAndToNamed(AppRoutes.LOGIN_VIEW);
      }
    } else {
      await Get.offAndToNamed(AppRoutes.LOGIN_VIEW);
    }
  }
}
