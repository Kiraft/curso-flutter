import 'package:get/get.dart';

String endpoint = "http://10.0.2.2:9566/api/v1/list/especialistas?id=";

class EspecialistasProvider extends GetConnect {
  Future<Response> getRaw(String id) async {
    final raw =
        await get("http://10.0.2.2:9566/api/v1/list/especialistas?id=$id")
            .timeout(const Duration(seconds: 3));

    print('6607e97c8280b25de8e8fc1c');
    print(id);
    print(raw.body);

    if (raw.statusCode == 200) {
      return raw;
    } else if (raw.statusCode == 400) {
      throw "Especialidad no existe";
    } else {
      throw "Error de conexion";
    }
  }
}
