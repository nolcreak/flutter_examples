import 'package:flutter/material.dart';

class BuildPersonName extends StatelessWidget {
  final String name;
  final double? fontSize;

  BuildPersonName({
    required this.name,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: fontSize ?? 16,
      ),
    );
  }
}
