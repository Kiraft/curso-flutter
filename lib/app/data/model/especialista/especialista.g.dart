// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'especialista.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Especialista _$EspecialistaFromJson(Map<String, dynamic> json) => Especialista(
      message: json['message'] as String,
      status: json['status'] as bool,
      data: EspecialistaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EspecialistaToJson(Especialista instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data.toJson(),
    };
