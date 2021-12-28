class ModelJob {
  final String id;
  final String name;
  final String category;
  final String companyName;
  final String companyLogo;
  final String location;
  final List about;
  final List qualifications;
  final List responsibilities;
  final int createdAt;
  final int updatedAt;

  ModelJob({
    required this.id,
    required this.name,
    required this.category,
    required this.companyName,
    required this.companyLogo,
    required this.location,
    required this.about,
    required this.qualifications,
    required this.responsibilities,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ModelJob.fromJson(Map<String, dynamic> json) => ModelJob(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        companyName: json["companyName"],
        companyLogo: json["companyLogo"],
        location: json["location"],
        about: json["about"],
        qualifications: json["qualifications"],
        responsibilities: json["responsibilities"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category,
        "companyName": companyName,
        "companyLogo": companyLogo,
        "location": location,
        "about": about,
        "qualifications": qualifications,
        "responsibilities": responsibilities,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}
