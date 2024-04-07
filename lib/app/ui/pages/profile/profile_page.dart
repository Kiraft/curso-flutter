import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/profile_controller.dart';
import 'package:flutter_application_1/app/ui/pages/globalwidgets/navbar.dart';
import 'package:flutter_application_1/app/ui/utiles/style_utils.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getNavbar(),
      body: SafeArea(
        child: Container(
          color: Colors.red,
          constraints: const BoxConstraints.expand(),
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 80),
                color: Colors.red,
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bienvenido",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  constraints: const BoxConstraints.expand(height: 200),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                      color: PRIMARY),
                  child: GetBuilder<ProfileController>(
                      builder: (specialistsController) {
                    return const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text('LA VISTA ES DE PERFIL')]);
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
