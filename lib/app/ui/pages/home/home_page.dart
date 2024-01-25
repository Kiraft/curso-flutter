import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text('HomePage'),),
    body:  const SafeArea(
      child: Text('HomeController'))
    );
  }
}