import 'package:flutter/material.dart';

class BarTextChild extends StatelessWidget {
  BarTextChild({super.key, required this.title, required this.description});

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
