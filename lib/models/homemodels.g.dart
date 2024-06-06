// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homemodels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

homemodels _$homemodelsFromJson(Map<String, dynamic> json) => homemodels(
      username: json['username'] as String,
      saldoA: (json['saldoA'] as num).toInt(),
      saldoM: (json['saldoM'] as num).toInt(),
      movimiento: json['movimiento'] as String,
      foto: json['foto'] as String,
    );

Map<String, dynamic> _$homemodelsToJson(homemodels instance) =>
    <String, dynamic>{
      'username': instance.username,
      'saldoA': instance.saldoA,
      'movimiento': instance.movimiento,
      'saldoM': instance.saldoM,
      'foto': instance.foto,
    };
