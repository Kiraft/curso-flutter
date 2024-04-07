// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'especialista_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EspecialistaData _$EspecialistaDataFromJson(Map<String, dynamic> json) =>
    EspecialistaData(
      id: json['_id']['\$oid'] as String,
      horario: json['horario'] as String,
      direccion: json['direccion'] as String,
      edad: json['edad'] as int,
      rating: json['rating'] as String,
      calificaciones: json['calificaciones'] as int,
      comentarios: json['comentarios'] as int,
      mail: json['mail'] as String,
      number: json['number'] as String,
      pacientes: json['pacientes'] as int,
      carreras:
          (json['carreras'] as List<dynamic>).map((e) => e as String).toList(),
      resumen: json['resumen'] as String,
      img: json['img'] as String,
      especialidad: json['especialidad']['_id']['\$oid'] as String,
      nombre: json['nombre'] as String,
    );

Map<String, dynamic> _$EspecialistaDataToJson(EspecialistaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'horario': instance.horario,
      'direccion': instance.direccion,
      'edad': instance.edad,
      'rating': instance.rating,
      'calificaciones': instance.calificaciones,
      'comentarios': instance.comentarios,
      'mail': instance.mail,
      'number': instance.number,
      'pacientes': instance.pacientes,
      'carreras': instance.carreras,
      'resumen': instance.resumen,
      'img': instance.img,
      'especialidad': instance.especialidad,
      'nombre': instance.nombre,
    };
