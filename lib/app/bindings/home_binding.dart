import 'package:flutter_application_1/app/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController());
  }
}