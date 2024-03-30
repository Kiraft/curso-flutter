import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  RxString username = RxString("");

  @override
  void onReady() {
    getName();
  }

  getName() {
    final box = GetStorage();
    username.value = box.read('username');
  }
}
