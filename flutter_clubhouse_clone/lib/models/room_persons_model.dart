import 'person_model.dart';
import 'speaker_model.dart';

class RoomPersonsModel {
  final List<SpeakerModel> speakers;
  final List<PersonModel> followers;
  final List<PersonModel> others;

  RoomPersonsModel({
    required this.speakers,
    required this.followers,
    required this.others,
  });
}
