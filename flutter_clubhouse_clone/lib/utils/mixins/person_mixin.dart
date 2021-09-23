import 'dart:math';

import 'package:faker/faker.dart';

import '../../models/person_model.dart';
import '../../services/picsum_service.dart';
import '../extensions/random_extensions.dart';

mixin PersonMixin {
  static final Faker _faker = Faker();
  static final Random _random = Random();

  static PersonModel get createNewPerson {
    final person = _faker.person;

    return PersonModel(
      firstName: person.firstName(),
      lastName: person.lastName(),
      followers: <PersonModel>[],
      following: <PersonModel>[],
      description: _faker.lorem.sentences(_random.nextIntBetween(min: 1, max: 4)).join('.'),
      imageURL: PicsumService.getRandomImage(),
    );
  }

  static List<PersonModel> createNewPersons({required int amount}) {
    return List<PersonModel>.generate(
      amount,
      (index) => createNewPerson,
    );
  }
}
