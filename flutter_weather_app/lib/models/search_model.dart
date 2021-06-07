import 'dart:convert';

List<SearchModel> searchModelFromJson(String str) => List<SearchModel>.from(
    json.decode(str).map((x) => SearchModel.fromJson(x)));

String searchModelToJson(List<SearchModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchModel {
  SearchModel({
    this.name,
    this.region,
    this.country,
  });

  String? name;
  String? region;
  String? country;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        name: json['name'],
        region: json['region'],
        country: json['country'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country': country,
      };
}
