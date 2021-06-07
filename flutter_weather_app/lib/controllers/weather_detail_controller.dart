import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/api_constants/api_endpoint_constants.dart';
import '../models/forecast_model.dart';
import '../services/api_service.dart';
import '../services/pref.dart';

class WeatherDetailController extends GetxController {
  final SharedPreferences _prefs = Get.find<SharedPrefService>().prefs;
  final RxList weatherData = [].obs;
  final RxBool isLoading = false.obs;
  final RxList<String> locationData = <String>[].obs;
  late final String location;
  final String arguments = Get.arguments;

  @override
  void onInit() async {
    await getDetails({'q': arguments});
    final locationText = weatherData[0].location;
    location =
        '${locationText.name}, ${locationText.region}, ${locationText.country}';
    if (_prefs.getStringList('location') != null) {
      locationData.value = _prefs.getStringList('location')!;
    }
    super.onInit();
  }

  @override
  void onReady() {
    if (!locationData.contains(location)) {
      customDefaultDialog(locationData, location, _prefs);
    }

    super.onReady();
  }

  void removeLocation(index) async {
    locationData.removeAt(index);
    await _prefs.setStringList('location', locationData);
  }

  Future getDetails(queryParameters) async {
    isLoading.value = true;
    try {
      weatherData.clear();
      final jsonData = await ApiService()
          .getData(ApiEndpointConstants.FORECAST, queryParameters);
      weatherData.add(ForecastModel.fromJson(jsonData));
    } catch (e) {
      await Get.defaultDialog(title: 'Alert', middleText: e.toString());
    }
    isLoading.value = false;
  }
}

void customDefaultDialog(
    RxList<String> locationData, String location, SharedPreferences prefs) {
  Get.defaultDialog(
    title: 'Heyy!',
    middleText: 'Would you like to save the location?',
    textConfirm: 'Save',
    confirmTextColor: Colors.white,
    onConfirm: () async {
      locationData.insert(0, location);
      await prefs.setStringList('location', locationData);
      Get.back();
    },
    textCancel: 'Cancel',
  );
}
