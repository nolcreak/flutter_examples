class PersonModel {
  final String firstName;
  final String lastName;
  final List<PersonModel> followers;
  final List<PersonModel> following;
  final String description;
  final String imageURL;

  PersonModel({
    required this.firstName,
    required this.lastName,
    required this.followers,
    required this.following,
    required this.description,
    required this.imageURL,
  });
}
