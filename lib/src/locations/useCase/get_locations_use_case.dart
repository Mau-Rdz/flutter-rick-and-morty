import 'dart:convert';

import 'package:practica/src/infrastructure/use_case.dart';
import 'package:practica/src/locations/domain/repositories/get_location_repository.dart';
import 'package:practica/src/locations/models/locations/locations.dart';
import 'package:practica/widgets/local_storage/local_storage.dart';

class GetLocationUseCase implements UseCase<String, Future<List<Map<String, dynamic>>>> {
  final GetLocationRepository getLocationRepository = GetLocationRepository();

  @override
  Future<List<Map<String, dynamic>>> execute([String? url]) async {
    String? token = await getData('token') ?? ""; 
    if(token != ""){
      final response = await getLocationRepository
          .execute(url ?? "https://rickandmortyapi.com/api/location");
      final Map<String,dynamic> responseDecoded = json.decode(response);
      final List<dynamic> data = responseDecoded['results'];
      return Location.fromJsonList(data);
    }
    return [];
  }
}