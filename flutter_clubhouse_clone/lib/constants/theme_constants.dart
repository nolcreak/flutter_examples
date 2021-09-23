import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'color_constants.dart';

mixin Themes {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorConstants.lightBeigeColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: ColorConstants.lightBeigeColor,
      iconTheme: const IconThemeData().copyWith(
        color: ColorConstants.blackColor,
      ),
    ),
    textTheme: GoogleFonts.nunitoSansTextTheme(
      const TextTheme(
        bodyText2: TextStyle(
          color: ColorConstants.blackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = lightTheme.copyWith(
    brightness: Brightness.dark,
  );
}
