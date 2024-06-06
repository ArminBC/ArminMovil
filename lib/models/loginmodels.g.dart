// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginmodels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

loginmodels _$loginmodelsFromJson(Map<String, dynamic> json) => loginmodels(
      username: json['username'] as String,
      password: json['password'] as String,
      save: json['save'] as bool,
    );

Map<String, dynamic> _$loginmodelsToJson(loginmodels instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'save': instance.save,
    };
