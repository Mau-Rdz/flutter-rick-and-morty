class Login {
  final int? id;
  final String? email;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? image;
  final String? token;
  final String? status;

  const Login({
    required this.id,
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.token,
    required this.status,
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
      status: json['status'] as String?,
    );
  }

  static Map<String, dynamic> fromJsonList(Map<String, dynamic> jsonData) {
    final x = Login.fromJson(jsonData);
    Map<String, dynamic> login = {
      "id": x.id,
      "email": x.email,
      "password": x.password,
      "firstName": x.firstName,
      "lastName": x.lastName,
      "gender": x.gender,
      "image": x.image,
      "token": x.token,
      "status": x.status,
    };
    return login;
  }
}