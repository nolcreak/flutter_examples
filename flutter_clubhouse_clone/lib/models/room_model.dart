import 'room_persons_model.dart';

class RoomModel {
  final String clubName;
  final String roomName;
  final RoomPersonsModel persons;

  RoomModel({
    required this.clubName,
    required this.roomName,
    required this.persons,
  });
}
