import 'package:flutter/material.dart';

class MyIconBtn extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  MyIconBtn({required this.onPressed, required this.icon});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressed();
      },
      icon: Icon(icon),
    );
  }
}
