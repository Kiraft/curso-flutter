import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:get/get.dart';

class MenusController extends GetxController {
  RxInt selectedIndex = RxInt(0);
  late List<String> routesPages;

  @override
  void onReady() {
    super.onReady();
    routesPages = [Routes.HOME, Routes.PROFILE, Routes.PROFILE, Routes.PROFILE];
  }

  changePage() {
    Get.toNamed(routesPages[selectedIndex.value]);
  }
}
