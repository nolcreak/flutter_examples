import 'package:flutter/material.dart';

class JCustomAvatar extends StatelessWidget {
  final double height;
  final double width;

  final String url;
  const JCustomAvatar({
    Key? key,
    required this.url,
    this.height = 70,
    this.width = 65,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(url),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
    );
  }
}
