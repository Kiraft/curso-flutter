import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/home_controller.dart';
import 'package:flutter_application_1/app/ui/pages/globalwidgets/navbar.dart';
import 'package:flutter_application_1/app/ui/utiles/style_utils.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
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
              GetBuilder<HomeController>(builder: (homeController) {
                return Container(
                  constraints: const BoxConstraints.expand(height: 80),
                  color: Colors.red,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() {
                            return Text(
                              "Bienvenido ${homeController.username}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            );
                          })
                        ],
                      )
                    ],
                  ),
                );
              }),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  constraints: const BoxConstraints.expand(height: 200),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    ),
                    color: PRIMARY,
                  ),
                  child: GetBuilder<HomeController>(builder: (homeController) {
                    return Obx(() {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "Seleccione su especialidad",
                            style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ...homeController.listCardWidgets.value
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    });
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
