import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

mixin Themes {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black, fontSize: 17),
          subtitle1: TextStyle(color: Colors.black)),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        filled: true,
        fillColor: ColorConstants.jWhite,
        border: InputBorder.none,
        enabledBorder: null,
        focusedBorder: null,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorConstants.jGreen,
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.transparent));

  static final ThemeData darkTheme = lightTheme.copyWith(
    brightness: Brightness.dark,
  );
}
