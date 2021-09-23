import 'package:flutter/material.dart';

import 'build_room.dart';
import 'build_bottom_gradient.dart';
import '../../../models/room_model.dart';
import '../../../models/person_model.dart';

class BuildRooms extends StatelessWidget {
  final PersonModel profile;
  final List<RoomModel> rooms;

  const BuildRooms({
    required this.rooms,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: rooms.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 16,
              top: 4,
            ),
            child: BuildRoom(
              roomModel: rooms[index],
              profile: profile,
            ),
          ),
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: BuildBottomGradient(),
        ),
      ],
    );
  }
}
