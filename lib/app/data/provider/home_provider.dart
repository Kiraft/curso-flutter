import 'package:get/get.dart';

String endpoint = "http://10.0.2.2:9566/api/v1/list/specialties";

class HomeProvider extends GetConnect {
  Future<Response> getRaw() async {
    final raw = await get(endpoint).timeout(const Duration(seconds: 3));

    if (raw.statusCode == 200) {
      return raw;
    } else if (raw.statusCode == 400) {
      throw "usuario no valido";
    } else {
      throw "Error de conexion";
    }
  }
}
