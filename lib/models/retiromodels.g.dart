// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retiromodels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

retiromodels _$retiromodelsFromJson(Map<String, dynamic> json) => retiromodels(
      tarjetaN: json['tarjetaN'] as String,
      saldoA: (json['saldoA'] as num).toInt(),
      motivo: json['motivo'] as String,
    );

Map<String, dynamic> _$retiromodelsToJson(retiromodels instance) =>
    <String, dynamic>{
      'tarjetaN': instance.tarjetaN,
      'saldoA': instance.saldoA,
      'motivo': instance.motivo,
    };
