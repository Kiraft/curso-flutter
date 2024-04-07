import 'package:flutter/material.dart';

class RowDetallesText extends StatelessWidget {
  const RowDetallesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              '10000',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Calificaciones',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        VerticalDivider(
          color: Colors.red,
          thickness: 2,
        ),
        Column(
          children: [
            Text(
              '10000',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Pacientes',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        VerticalDivider(
          color: Colors.red,
          thickness: 2,
        ),
        Column(
          children: [
            Text(
              '10000',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Comentarios',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ],
    );
  }
}
