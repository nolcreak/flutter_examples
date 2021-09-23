import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class BuildRoomName extends StatelessWidget {
  final String roomName;
  final double? fontSize;

  const BuildRoomName({
    required this.roomName,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      roomName,
      style: GoogleFonts.nunito(
        fontWeight: FontWeight.bold,
        fontSize: fontSize ?? 16,
        letterSpacing: 0.5,
      ),
    );
  }
}
