import 'package:flutter_application_1/app/data/model/especialista/especialista_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'especialista.g.dart';

@JsonSerializable(explicitToJson: true)
class Especialista {
  String message;
  bool status;
  EspecialistaData data;

  Especialista(
      {required this.message, required this.status, required this.data});

  factory Especialista.fromJson(Map<String, dynamic> data) =>
      _$EspecialistaFromJson(data);

  Map<String, dynamic> toJson() => _$EspecialistaToJson(this);
}
