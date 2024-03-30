import 'package:flutter/material.dart';

class ListCardsHome {
  static List<Widget> getList() {
    return [
      Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 70,
                height: 20,
              ),
              const Text(
                "Terapeuta",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 80,
                height: 20,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 70,
                height: 20,
              ),
              const Text(
                "Terapeuta",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 80,
                height: 20,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 70,
                height: 20,
              ),
              const Text(
                "Terapeuta",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 80,
                height: 20,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ];
  }
}
