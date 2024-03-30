import 'package:flutter_application_1/app/data/provider/login_provider.dart';
import 'package:get_storage/get_storage.dart';

import '../model/user/user.dart';

LoginProvider loginProvider = new LoginProvider();

class LoginRepository {
  Future<User> getUserData(String username, String password) async {
    final raw = await loginProvider.getRaw(username, password);
    final data = raw.body;
    User user = User.fromJson(data);
    final box = GetStorage();
    box.write("username", user.data.username);
    return user;
  }
}
