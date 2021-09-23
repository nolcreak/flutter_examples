import 'package:flutter/material.dart';

class AppFabBtn extends StatelessWidget {
  final Function onPressed;
  final Widget child;

  const AppFabBtn({required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onPressed();
      },
      child: child,
    );
  }
}
