import 'dart:convert';

import 'package:practica/manages/fetchServiceManage.dart';
import 'package:practica/src/infrastructure/repository.dart';

class GetLoginRepository extends FetchServiceManage
    implements Repository<String, Future<String>> {
  @override
  Future<String> execute(String port) async {
    final responseapi = await get<String, String>(Uri.parse(port));
    return responseapi;
  }
}