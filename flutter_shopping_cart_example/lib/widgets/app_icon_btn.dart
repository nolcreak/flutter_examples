import 'package:flutter/material.dart';

class AppIconBtn extends StatelessWidget {
  final Function function;
  final IconData icon;

  const AppIconBtn({required this.function, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        function();
      },
      icon: Icon(icon),
    );
  }
}
