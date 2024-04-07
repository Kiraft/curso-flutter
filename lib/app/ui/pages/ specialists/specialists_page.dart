import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/specialists_controller.dart';
import 'package:flutter_application_1/app/ui/pages/globalwidgets/navbar.dart';
import 'package:flutter_application_1/app/ui/utiles/style_utils.dart';
import 'package:get/get.dart';

class SpecialistsPage extends GetView<SpecialistsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getNavbar(),
      body: SafeArea(
        child: Container(
          color: PRIMARY,
          constraints: const BoxConstraints.expand(),
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 110),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(140, 50),
                        bottomRight: Radius.elliptical(140, 50)),
                    color: Colors.red),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // constraints: const BoxConstraints.expand(),
                      // color: Colors.blue,
                      child: Image.asset(
                        'assets/imgs/414264.png',
                        height: 70,
                        width: 80,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  constraints: const BoxConstraints.expand(height: 200),
                  decoration: const BoxDecoration(color: PRIMARY),
                  child: GetBuilder<SpecialistsController>(
                      builder: (specialistsController) {
                    return Obx(() {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Seleccione su especialista",
                            style: TextStyle(
                                fontSize: 25, fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ...specialistsController.listCardEspecialistas.value
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
