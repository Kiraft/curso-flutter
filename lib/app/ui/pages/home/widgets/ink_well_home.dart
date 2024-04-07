import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/specialists_controller.dart';
import 'package:flutter_application_1/app/data/model/specialty/specialty_data.dart';
import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InkWellHome extends StatelessWidget {
  const InkWellHome({
    super.key,
    required this.specialty,
  });

  final SpecialtyData specialty;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final box = GetStorage();
        box.write("idEspecialidad", specialty.id);
        Get.toNamed(Routes.SPECIALISTS);

        SpecialistsController specialistsController =
            Get.find<SpecialistsController>();
        specialistsController.onReady();
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 7.5),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      specialty.name,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
