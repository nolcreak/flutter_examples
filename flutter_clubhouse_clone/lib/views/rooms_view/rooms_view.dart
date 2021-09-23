import 'dart:math';
import 'package:flutter/material.dart';

import 'package:faker/faker.dart';

import 'widgets/build_fab.dart';
import 'widgets/build_rooms.dart';
import 'widgets/build_appbar.dart';
import '../../models/room_model.dart';
import '../../models/speaker_model.dart';
import '../../constants/app_constants.dart';
import '../../models/room_persons_model.dart';
import '../../utils/mixins/person_mixin.dart';
import '../../../utils/extensions/random_extensions.dart';
import '../../../utils/extensions/string_extensions.dart';

class RoomsView extends StatelessWidget {
  final Random _random = Random();
  final Faker _faker = Faker();

  @override
  Widget build(BuildContext context) {
    final profile = PersonMixin.createNewPerson;

    final rooms = List.generate(
      AppConstants.totalRooms,
      (index) {
        final clubName = _faker.lorem.words(_random.nextIntBetween(min: 2, max: 4)).join(' ').toUpperCase();
        final roomName = _faker.lorem.words(_random.nextIntBetween(min: 3, max: 6)).join(' ').toFirstUpperCase();

        final randomPersons = PersonMixin.createNewPersons(
          amount: _random.nextIntBetween(
            min: AppConstants.minPersonNumber,
            max: AppConstants.maxPersonNumber,
          ),
        );

        final speakers = List.generate(
          _random.nextIntBetween(
            min: AppConstants.minSpeakerNumber,
            max: AppConstants.maxSpeakerNumber,
          ),
          (_) {
            final index = _random.nextInt(randomPersons.length);

            // person becomes speaker
            final speaker = SpeakerModel(
              speaker: randomPersons.removeAt(index),
              isMod: _random.nextBool(),
            );

            return speaker;
          },
        );

        if (speakers.every((speaker) => speaker.isMod == false)) {
          speakers[_random.nextInt(speakers.length)].isMod = true;
        }

        final followers = List.generate(_random.nextInt(randomPersons.length), (index) {
          return randomPersons.removeAt(_random.nextInt(randomPersons.length));
        });

        final others = List.generate(_random.nextInt(randomPersons.length), (index) {
          return randomPersons.removeAt(_random.nextInt(randomPersons.length));
        });

        final persons = RoomPersonsModel(
          speakers: speakers,
          followers: followers,
          others: others,
        );

        return RoomModel(
          clubName: clubName,
          roomName: roomName,
          persons: persons,
        );
      },
    );

    return Scaffold(
      appBar: BuildAppBar(profile: profile),
      body: BuildRooms(rooms: rooms, profile: profile),
      floatingActionButton: BuildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
