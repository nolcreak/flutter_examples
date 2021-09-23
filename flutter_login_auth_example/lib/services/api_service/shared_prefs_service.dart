import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService extends GetxService {
  late final SharedPreferences prefs;

  Future<SharedPrefsService> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }
}
