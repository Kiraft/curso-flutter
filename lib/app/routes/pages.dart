import 'package:flutter_application_1/app/bindings/home_binding.dart';
import 'package:flutter_application_1/app/bindings/login_binding.dart';
import 'package:flutter_application_1/app/ui/pages/home/home_page.dart';
import 'package:flutter_application_1/app/ui/pages/login/login_page.dart';
import 'package:get/get.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
