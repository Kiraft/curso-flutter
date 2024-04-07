import 'package:flutter_application_1/app/controllers/menus_controller.dart';
import 'package:get/get.dart';

class MenusBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MenusController>(MenusController(), tag: 'menucntl');
  }
}
