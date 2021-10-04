import 'package:flutter/material.dart';

class JFilterChip extends StatelessWidget {
  const JFilterChip({
    Key? key,
    required this.text,
    required this.value,
    required this.color,
    required this.valueColor,
    required this.valueBackgraundColor,
    required this.textColor,
  }) : super(key: key);
  final String text;
  final String value;
  final Color color;
  final Color valueColor;
  final Color valueBackgraundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(4);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              letterSpacing: -0.4,
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Container(
            decoration: BoxDecoration(
              color: valueBackgraundColor,
              borderRadius: borderRadius,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                value,
                style: TextStyle(
                  color: valueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
