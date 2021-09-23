import 'package:flutter/material.dart';

import 'build_speaker.dart';
import '../../../models/speaker_model.dart';

class BuildSpeakers extends StatelessWidget {
  final List<SpeakerModel> speakers;

  BuildSpeakers({required this.speakers});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = MediaQuery.of(context).size.width ~/ 100;

    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      itemCount: speakers.length,
      itemBuilder: (context, index) {
        final speakerModel = speakers[index];

        return BuildSpeaker(speakerModel: speakerModel);
      },
    );
  }
}
