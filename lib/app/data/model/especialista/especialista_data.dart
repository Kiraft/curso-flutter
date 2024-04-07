import 'package:json_annotation/json_annotation.dart';

part 'especialista_data.g.dart';

@JsonSerializable(explicitToJson: true)
class EspecialistaData {
  String id;
  String horario;
  String direccion;
  int edad;
  String rating;
  int calificaciones;
  int comentarios;
  String mail;
  String number;
  int pacientes;
  List<String> carreras;
  String resumen;
  String img;
  String especialidad;
  String nombre;

  EspecialistaData(
      {required this.id,
      required this.horario,
      required this.direccion,
      required this.edad,
      required this.rating,
      required this.calificaciones,
      required this.comentarios,
      required this.mail,
      required this.number,
      required this.pacientes,
      required this.carreras,
      required this.resumen,
      required this.img,
      required this.especialidad,
      required this.nombre});

  factory EspecialistaData.fromJson(Map<String, dynamic> data) =>
      _$EspecialistaDataFromJson(data);

  Map<String, dynamic> toJson() => _$EspecialistaDataToJson(this);
}
