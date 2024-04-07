import 'package:flutter_application_1/app/controllers/physiotherapist_controller.dart';
import 'package:get/get.dart';

class PhysiotherapistBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhysiotherapistController>(() => PhysiotherapistController());
  }
}
