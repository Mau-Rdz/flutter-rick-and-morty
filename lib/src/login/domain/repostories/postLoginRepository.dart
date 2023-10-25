import 'dart:convert';

import 'package:practica/manages/fetchServiceManage.dart';
import 'package:practica/src/infrastructure/repository.dart';

class PostLoginRepository extends FetchServiceManage
    implements PostRepository<String, Future<String>> {
  @override
  Future<String> execute(String port, String data) async {
    final responseapi = await post<String, dynamic, String>(Uri.parse(port), data);
    return responseapi;
  }
}