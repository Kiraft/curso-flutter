import 'package:json_annotation/json_annotation.dart';

part 'specialty_data.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecialtyData {
  String id;
  String name;
  String urlIcon;

  SpecialtyData({required this.id, required this.name, required this.urlIcon});

  factory SpecialtyData.fromJson(Map<String, dynamic> data) =>
      _$SpecialtyDataFromJson(data);

  Map<String, dynamic> toJson() => _$SpecialtyDataToJson(this);
}
