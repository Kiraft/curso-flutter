import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/data/model/especialista/especialista_data.dart';
import 'package:flutter_application_1/app/data/repository/especialistas_repository.dart';
import 'package:flutter_application_1/app/ui/pages/%20specialists/widgets/ink_well_specialists.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

EspecialistasRepository especialistasRepository = EspecialistasRepository();

class SpecialistsController extends GetxController {
  RxString idEspecialidad = RxString("");
  RxList<Widget> listCardEspecialistas = <Widget>[].obs;

  @override
  void onReady() {
    getIdEspecialidad();
    getSpecialtiesCards();
  }

  getIdEspecialidad() {
    final box = GetStorage();
    idEspecialidad.value = box.read('idEspecialidad');
  }

  Future<void> getSpecialtiesCards() async {
    List<EspecialistaData> especialistas =
        await especialistasRepository.listarEspecialistas(idEspecialidad.value);

    List<Widget> cardListEspecialistas = [];

    for (EspecialistaData s in especialistas) {
      cardListEspecialistas.add(InkWellCustom(s: s));
    }

    listCardEspecialistas.value = cardListEspecialistas;
  }
}
