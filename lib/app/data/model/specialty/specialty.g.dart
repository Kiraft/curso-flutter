// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Specialty _$SpecialtyFromJson(Map<String, dynamic> json) => Specialty(
      message: json['message'] as String,
      status: json['status'] as bool,
      data: SpecialtyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpecialtyToJson(Specialty instance) => <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data.toJson(),
    };
