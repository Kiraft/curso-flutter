import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/menus_controller.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

SlidingClippedNavBar getNavbar() {
  final menu = Get.find<MenusController>(tag: 'menucntl');

  return SlidingClippedNavBar(
    backgroundColor: Colors.white,
    onButtonPressed: (index) {
      menu.selectedIndex.value = index;
      menu.changePage();
    },
    iconSize: 30,
    activeColor: const Color(0xFF01579B),
    selectedIndex: menu.selectedIndex.value,
    barItems: [
      BarItem(
        icon: Icons.home,
        title: 'Inicio',
      ),
      BarItem(
        icon: Icons.search_rounded,
        title: 'Buscar',
      ),
      BarItem(
        icon: Icons.search_rounded,
        title: 'Mis Agendas',
      ),
      BarItem(
        icon: Icons.account_circle,
        title: 'Perfil',
      ),

      /// Add more BarItem if you want
    ],
  );
}
