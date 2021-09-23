import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class ProfileWidget extends StatelessWidget {
  final String imageURL;
  final double? size;
  final double? marginSize;

  const ProfileWidget({
    required this.imageURL,
    this.size,
    this.marginSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(marginSize ?? 8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorConstants.mediumGrayColor,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(
            imageURL,
          ),
        ),
      ),
      width: size,
      height: size,
    );
  }
}
