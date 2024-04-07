import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/data/model/specialty/specialty_data.dart';
import 'package:flutter_application_1/app/data/repository/home_repository.dart';
import 'package:flutter_application_1/app/ui/pages/home/widgets/ink_well_home.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

HomeRepository homeRepository = HomeRepository();

class HomeController extends GetxController {
  RxString username = RxString("");
  RxList<Widget> listCardWidgets = <Widget>[].obs;

  @override
  void onReady() {
    getName();
    getSpecialtiesCards();
  }

  getName() {
    final box = GetStorage();
    username.value = box.read('username');
  }

  Future<void> getSpecialtiesCards() async {
    List<SpecialtyData> especialidades =
        await homeRepository.listarSpecialidades();

    List<Widget> cardListSpecialty = [];

    for (SpecialtyData specialty in especialidades) {
      cardListSpecialty.add(InkWellHome(specialty: specialty));
    }

    listCardWidgets.value = cardListSpecialty;
  }
}
