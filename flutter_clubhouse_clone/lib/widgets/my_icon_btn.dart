import 'package:flutter/material.dart';

class MyIconBtn extends StatelessWidget {
  final Icon icon;
  final double? size;
  final Function onTap;
  final int? quarterTurns;

  const MyIconBtn({
    required this.icon,
    required this.onTap,
    this.size,
    this.quarterTurns,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            onTap();
          },
          child: RotatedBox(
            quarterTurns: quarterTurns ?? 0,
            child: SizedBox(
              width: size ?? 40,
              height: size ?? 40,
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}
