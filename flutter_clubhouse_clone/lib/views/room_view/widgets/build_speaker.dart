import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'build_mod_icon.dart';
import '../../../models/speaker_model.dart';
import '../../../widgets/profile_widget.dart';
import '../../../widgets/build_person_name.dart';

class BuildSpeaker extends StatelessWidget {
  final SpeakerModel speakerModel;

  BuildSpeaker({
    required this.speakerModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ProfileWidget(
            imageURL: speakerModel.speaker.imageURL,
            marginSize: 4,
          ),
        ),
        speakerModel.isMod
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildModIcon(),
                  BuildPersonName(name: speakerModel.speaker.firstName),
                ],
              )
            : BuildPersonName(name: speakerModel.speaker.firstName)
      ],
    );
  }
}
