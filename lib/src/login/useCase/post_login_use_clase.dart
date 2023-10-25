import 'dart:convert';
import 'dart:io';

import 'package:practica/src/login/domain/repostories/postLoginRepository.dart';
import 'package:practica/src/infrastructure/use_case.dart';
import 'package:practica/src/login/models/login/login.dart';

class PostLoginUseCase implements UseCase<String, Future<Map<String, dynamic>>> {
  final PostLoginRepository postLoginRepository = PostLoginRepository();
  final Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: "application/json",
  };

  @override
  Future<Map<String, dynamic>> execute([String? url, Map<String, dynamic>? payload]) async {
    final response = await postLoginRepository
        .execute(url ?? "https://dummyjson.com/auth/login", json.encode(payload));
    final Map<String,dynamic> data = json.decode(response);
    if(data["message"] == "Invalid credentials"){
      data["status"] = "error";
      return data;
    }
    data["status"] = "success";
    return Login.fromJsonList(data);
  }
}