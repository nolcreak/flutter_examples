class JobModel {
  JobModel({
    this.slug,
    this.id,
    this.epoch,
    this.date,
    this.company,
    this.companyLogo,
    this.position,
    this.tags,
    this.logo,
    this.description,
    this.location,
    this.original,
    this.url,
    this.applyUrl,
  });

  final String? slug;
  final String? id;
  final String? epoch;
  final DateTime? date;
  final String? company;
  final String? companyLogo;
  final String? position;
  final List<String>? tags;
  final String? logo;
  final String? description;
  final String? location;
  final bool? original;
  final String? url;
  final String? applyUrl;

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        slug: json["slug"],
        id: json["id"],
        epoch: json["epoch"],
        date: DateTime.parse(json["date"]),
        company: json["company"],
        companyLogo: json["company_logo"],
        position: json["position"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        logo: json["logo"],
        description: json["description"],
        location: json["location"],
        original: json["original"],
        url: json["url"],
        applyUrl: json["apply_url"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "id": id,
        "epoch": epoch,
        "date": date?.toIso8601String(),
        "company": company,
        "company_logo": companyLogo,
        "position": position,
        "tags": List<dynamic>.from(tags!.map((x) => x)),
        "logo": logo,
        "description": description,
        "location": location,
        "original": original,
        "url": url,
        "apply_url": applyUrl,
      };
}
