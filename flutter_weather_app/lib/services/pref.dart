import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService extends GetxService {
  late final SharedPreferences prefs;

  Future<SharedPrefService> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }
}
