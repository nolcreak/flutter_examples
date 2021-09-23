import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/login_model.dart';
import '../routes/app_routes.dart';

import '../services/api_service/bio_auth_service.dart';
import '../services/api_service/shared_prefs_service.dart';
import '../services/api_service/user_service.dart';

class LoginController extends GetxController {
  final SharedPreferences _prefs = Get.find<SharedPrefsService>().prefs;
  final BioAuthService _bioAuthService = BioAuthService();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onReady() async {
    final canCheckBiometrics = await _bioAuthService.canCheckBiometrics;

    if (_prefs.containsKey('email') && _prefs.containsKey('token')) {
      if (canCheckBiometrics) {
        if (await _bioAuthService.didAuthenticate) {
          await Get.offAndToNamed(AppRoutes.DASHBOARD_VIEW);
        }
      }
    }

    super.onReady();
  }

  void login(LoginModel loginModel) async {
    final data = await UserService().login(loginModel);

    if (data != null) {
      await _prefs.setString('token', data['token']);
      await _prefs.setString('email', loginModel.email);

      await Get.offAndToNamed(AppRoutes.DASHBOARD_VIEW);
    }
  }
}
