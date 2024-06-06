// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferenciamodels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

transferenciamodels _$transferenciamodelsFromJson(Map<String, dynamic> json) =>
    transferenciamodels(
      name: json['name'] as String,
      cuenta: json['cuenta'] as String,
      movimiento: (json['movimiento'] as num).toInt(),
      motivo: json['motivo'] as String,
      fecha: DateTime.parse(json['fecha'] as String),
    );

Map<String, dynamic> _$transferenciamodelsToJson(
        transferenciamodels instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cuenta': instance.cuenta,
      'movimiento': instance.movimiento,
      'motivo': instance.motivo,
      'fecha': instance.fecha.toIso8601String(),
    };
