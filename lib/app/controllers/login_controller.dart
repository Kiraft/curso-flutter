import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:flutter_application_1/app/ui/pages/home/home_page.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginController extends GetxController {
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  validatedCredentials() {
    String adminUser = "admin";
    String adminPass = "1234";

    if (!txtUsuario.text.isEmpty && !txtPassword.text.isEmpty) {

      if (txtUsuario.text == adminUser || txtPassword.text == adminPass) {
        Get.toNamed(Routes.HOME);
      } else {
        EasyLoading.showError("Este usuario no existe");
      }
    } else {
      EasyLoading.showError("Llene todo los campos");
    }
  }
}
