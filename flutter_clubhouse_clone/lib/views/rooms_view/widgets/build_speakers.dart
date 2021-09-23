import 'dart:math';

import 'package:flutter/material.dart';

import '../../../constants/app_constants.dart';
import '../../../models/room_persons_model.dart';

class BuildSpeakers extends StatelessWidget {
  final RoomPersonsModel persons;

  final Random _random = Random();

  BuildSpeakers({
    required this.persons,
  });

  @override
  Widget build(BuildContext context) {
    final speakers = persons.speakers;
    final followers = persons.followers;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List<Widget>.generate(
        _random.nextBool() ? AppConstants.minShowedPersonNumber : AppConstants.maxShowedPersonNumber,
        (index) {
          final showedPerson = speakers.length > AppConstants.minShowedPersonNumber
              ? speakers[index].speaker
              : followers[_random.nextInt(followers.length)];

          final fullName = '${showedPerson.firstName} ${showedPerson.lastName} 💬';

          return Text(
            fullName,
            style: const TextStyle(fontSize: 18),
          );
        },
      ),
    );
  }
}
