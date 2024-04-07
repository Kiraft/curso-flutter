import 'package:flutter_application_1/app/controllers/specialists_controller.dart';
import 'package:get/get.dart';

class SpecialistsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialistsController>(() => SpecialistsController());
  }
}
