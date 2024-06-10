// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'micuentamodels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

micuentamodels _$micuentamodelsFromJson(Map<String, dynamic> json) =>
    micuentamodels(
      user: json['user'] as String,
      numcuenta: json['numcuenta'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      foto: json['foto'] as String,
    );

Map<String, dynamic> _$micuentamodelsToJson(micuentamodels instance) =>
    <String, dynamic>{
      'user': instance.user,
      'numcuenta': instance.numcuenta,
      'phone': instance.phone,
      'email': instance.email,
      'foto': instance.foto,
    };
