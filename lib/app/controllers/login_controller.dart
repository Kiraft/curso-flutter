import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/data/model/user/user.dart';
import 'package:flutter_application_1/app/data/repository/login_repository.dart';
import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  LoginRepository loginRepository = LoginRepository();

  validatedCampos() {
    txtUsuario.text.isEmpty ? throw "Rellene el campo usuario" : null;
    txtPassword.text.isEmpty ? throw "Ingrese su contraseña" : null;
  }

  Future<void> loginUser() async {
    try {
      validatedCampos();
      User user =
          await loginRepository.getUserData(txtUsuario.text, txtPassword.text);

      Get.toNamed(Routes.HOME);
    } catch (e) {
      EasyLoading.showInfo(e.toString());
    }
  }
}
