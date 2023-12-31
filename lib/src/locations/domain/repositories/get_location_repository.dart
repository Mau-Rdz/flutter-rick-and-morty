import 'package:practica/manages/fetch_service_manage.dart';
import 'package:practica/src/infrastructure/repository.dart';

class GetLocationRepository extends FetchServiceManage
    implements Repository<String, Future<String>> {
  @override
  Future<String> execute(String port) async {
    final responseapi = await get<String, String>(Uri.parse(port));
    return responseapi;
  }
}