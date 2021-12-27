class ModelCategory {
  final String id;
  final String name;
  final String imageUrl;
  final int createdAt;
  final int updatedAt;

  ModelCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ModelCategory.fromJson(Map<String, dynamic> json) => ModelCategory(
      id: json["id"],
      name: json["name"],
      imageUrl: json["imageUrl"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imageUrl": imageUrl,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}
