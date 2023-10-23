class Login {
  final int? id;
  final String? email;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? image;
  final String? token;

  const Login({
    required this.id,
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.token,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      id: json['id'] as int?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
      token: json['token'] as String?,
    );
  }

  static List<Map<String, dynamic>> fromJsonList(List<dynamic> jsonList) {
    List<Map<String, dynamic>> login = [];
    int cont = 0;
    for (var jsonData in jsonList) {
      final x = Login.fromJson(jsonData);
      cont++;
      login.add({
        "id": x.id,
        "email": x.email,
        "password": x.password,
        "firstName": x.firstName,
        "lastName": x.lastName,
        "gender": x.gender,
        "image": x.image,
        "token": x.token,
      });
      if (cont == 5) {
        break;
      }
    }
    return login;
  }
}