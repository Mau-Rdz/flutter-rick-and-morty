import 'dart:convert';
import 'dart:io';

import 'package:practica/src/infrastructure/use_case.dart';
import 'package:practica/src/characters/domain/repositories/getCharacterRepository.dart';
import 'package:practica/src/characters/models/characters/characters.dart';

class GetCharacterUseCase implements UseCase<String, Future<List<Map<String, dynamic>>>> {
  final GetCharacterRepository getCharacterRepository = GetCharacterRepository();

  @override
  Future<List<Map<String, dynamic>>> execute([String? url]) async {
    final response = await getCharacterRepository
        .execute(url ?? "https://rickandmortyapi.com/api/character");
    final Map<String,dynamic> responseDecoded = json.decode(response);
    final List<dynamic> data = responseDecoded['results'];
    return Character.fromJsonList(data);
  }
}