import 'package:flutter/material.dart';

import '../../../models/speaker_model.dart';
import '../../../widgets/profile_widget.dart';

class BuildAvatars extends StatelessWidget {
  final List<SpeakerModel> avatars;

  const BuildAvatars({required this.avatars});

  @override
  Widget build(BuildContext context) {
    final firstPerson = avatars[0].speaker;
    final secondPerson = avatars[1].speaker;

    const avatarSize = 45.0;

    return SizedBox(
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: ProfileWidget(
              imageURL: firstPerson.imageURL,
              size: avatarSize,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: ProfileWidget(
              imageURL: secondPerson.imageURL,
              size: avatarSize,
            ),
          ),
        ],
      ),
    );
  }
}
