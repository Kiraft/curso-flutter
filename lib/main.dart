import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/bindings/menus_binding.dart';
import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:flutter_application_1/app/ui/themes/light_theme.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: MenusBinding(),
    getPages: AppPages.pages,
    builder: (context, widget) {
      widget = EasyLoading.init()(context, widget);
      return widget;
    },
  ));
}
