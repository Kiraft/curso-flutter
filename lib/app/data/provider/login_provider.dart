import 'package:get/get.dart';

String endpoint =
    "http://10.0.2.2:9566/api/v1/user/login?username=kiraft&password=4321";

class LoginProvider extends GetConnect {
  Future<Response> getRaw(String username, String password) async {
    final raw = await get(
            "http://10.0.2.2:9566/api/v1/user/login?username=$username&password=$password")
        .timeout(const Duration(seconds: 3));

    if (raw.statusCode == 200) {
      return raw;
    } else if (raw.statusCode == 400) {
      throw "usuario no valido";
    } else {
      throw "Error de conexion";
    }
  }
}
