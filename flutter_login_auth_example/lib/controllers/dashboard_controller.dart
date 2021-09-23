import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/api_service/shared_prefs_service.dart';
import '../services/api_service/user_service.dart';

class DashboardController extends GetxController {
  late final SharedPreferences prefs;
  late final UserService _userService;

  @override
  void onInit() {
    prefs = Get.find<SharedPrefsService>().prefs;
    _userService = UserService();
    super.onInit();
  }

  void logout({required bool removeData}) {
    _userService.logout(removeData: removeData);
  }

  String get getEmail => prefs.getString('email') ?? '-';
  String get getToken => prefs.getString('token') ?? '-';
}
