import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../services/geo_services.dart';
import '../constants/api_constants/api_endpoint_constants.dart';
import '../models/search_model.dart';
import '../services/api_service.dart';

class HomeController extends GetxController {
  final RxList countryList = [].obs;
  final RxBool loading = false.obs;
  final RxString onChanged = ''.obs;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    debounce(onChanged, (_) => autoComplete({'q': onChanged.value}),
        time: Duration(seconds: 1));
    super.onInit();
  }

  Future determinePosition() async {
    final result = await GeoService().determinePosition();
    if (result == LocationPermission.deniedForever) {
      await Get.defaultDialog(
        title: 'Location services are disabled',
        middleText: 'Please open Settings to enable location services',
        textConfirm: 'Open Settings',
        confirmTextColor: Colors.white,
        onConfirm: () async {
          await Geolocator.openAppSettings();
          Get.back();
        },
        textCancel: 'Cancel',
      );
    }
    return '${result.latitude.toStringAsFixed(4)},${result.longitude.toStringAsFixed(4)}';
  }

  Future autoComplete(Map<String, String> queryParameters) async {
    loading.value = true;
    countryList.clear();
    try {
      final jsonData = await ApiService()
          .getData(ApiEndpointConstants.SEARCH, queryParameters);

      for (var i = 0; i < jsonData.length; i++) {
        countryList.add((SearchModel.fromJson(jsonData[i])));
      }
    } catch (e) {
      await Get.defaultDialog(title: 'Alert', middleText: e.toString());
    }
    loading.value = false;
  }
}
