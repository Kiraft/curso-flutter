import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/physiotherapist_controller.dart';
import 'package:flutter_application_1/app/data/model/especialista/especialista_data.dart';
import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InkWellCustom extends StatelessWidget {
  const InkWellCustom({
    super.key,
    required this.s,
  });

  final EspecialistaData s;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final box = GetStorage();
        box.write("idPhysiotherapist", s.id);
        Get.toNamed(Routes.PHYSIOTHERAPIST);

        PhysiotherapistController physiotherapistController =
            Get.find<PhysiotherapistController>();
        physiotherapistController.onReady();
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 7.5),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          s.nombre,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(s.horario),
                        Text(s.direccion)
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('Edad: ${s.edad.toString()}'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Container(
                          height: 10,
                          width: 10,
                          color: Colors.red,
                        ),
                        Text(s.rating)
                      ])
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('Servicio a domicilio')
            ],
          ),
        ),
      ),
    );
  }
}
