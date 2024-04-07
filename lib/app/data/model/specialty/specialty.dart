import 'package:flutter_application_1/app/data/model/specialty/specialty_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specialty.g.dart';

@JsonSerializable(explicitToJson: true)
class Specialty {
  String message;
  bool status;
  SpecialtyData data;

  Specialty({required this.message, required this.status, required this.data});

  factory Specialty.fromJson(Map<String, dynamic> data) =>
      _$SpecialtyFromJson(data);

  Map<String, dynamic> toJson() => _$SpecialtyToJson(this);
}
