// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarjetasmodels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

tarjertasmodels _$tarjertasmodelsFromJson(Map<String, dynamic> json) =>
    tarjertasmodels(
      nameT: json['nameT'] as String,
      banco: json['banco'] as String,
      numeroT: json['numeroT'] as String,
      fecha: DateTime.parse(json['fecha'] as String),
      tipoT: json['tipoT'] as String,
    );

Map<String, dynamic> _$tarjertasmodelsToJson(tarjertasmodels instance) =>
    <String, dynamic>{
      'nameT': instance.nameT,
      'banco': instance.banco,
      'numeroT': instance.numeroT,
      'fecha': instance.fecha.toIso8601String(),
      'tipoT': instance.tipoT,
    };
