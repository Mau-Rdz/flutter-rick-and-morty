import 'dart:convert';

import 'package:practica/src/infrastructure/use_case.dart';
import 'package:practica/src/characters/domain/repositories/get_character_repository.dart';
import 'package:practica/src/characters/models/characters/characters.dart';
import 'package:practica/widgets/local_storage/local_storage.dart';

class GetCharacterUseCase implements UseCase<String, Future<List<Map<String, dynamic>>>> {
  final GetCharacterRepository getCharacterRepository = GetCharacterRepository();

  @override
  Future<List<Map<String, dynamic>>> execute([String? url]) async {
    String? token = await getData('token') ?? ""; 
    if(token != ""){
      final response = await getCharacterRepository
          .execute(url ?? "https://rickandmortyapi.com/api/character");
      final Map<String,dynamic> responseDecoded = json.decode(response);
      final List<dynamic> data = responseDecoded['results'];
      return Character.fromJsonList(data);
    } else {
      return [];
    }
  }
}