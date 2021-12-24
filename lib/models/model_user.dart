class ModelUser {
  final String id;
  final String email;
  final String password;
  final String name;
  final String goal;

  ModelUser(
      {required this.id,
      required this.email,
      required this.password,
      required this.name,
      required this.goal});

  factory ModelUser.fromJson(Map<String, dynamic> json) => ModelUser(
        id: json["id"],
        email: json["email"],
        password: json["password"],
        name: json["name"],
        goal: json["goal"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "password": password,
        "name": name,
        "goal": goal
      };
}
