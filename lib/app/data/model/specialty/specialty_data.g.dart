// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialty_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialtyData _$SpecialtyDataFromJson(Map<String, dynamic> json) =>
    SpecialtyData(
      id: json['_id']['\$oid'] as String,
      name: json['name'] as String,
      urlIcon: json['urlIcon'] as String,
    );

Map<String, dynamic> _$SpecialtyDataToJson(SpecialtyData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'urlIcon': instance.urlIcon,
    };
