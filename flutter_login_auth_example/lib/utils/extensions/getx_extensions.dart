import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:clipboard/clipboard.dart';

extension GetxExtension on GetInterface {
  void showFlutterSnackbar({required String message, SnackBarAction? action}) {
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 1300),
      content: Text(message),
      action: action,
    );

    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }

  void copyToClipboard(String value) {
    FlutterClipboard.copy(value).then(
      (value) => showFlutterSnackbar(message: 'Copied'),
    );
  }
}
