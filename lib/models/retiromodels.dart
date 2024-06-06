import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
part 'retiromodels.g.dart';

@JsonSerializable()
class retiromodels {
  final String tarjetaN;
  final int saldoA;
  final String motivo;


  retiromodels({
    required this.tarjetaN,
    required this.saldoA,
    required this.motivo,
  });

 
   factory retiromodels.fromJson(Map<String, dynamic> json) => _$retiromodelsFromJson(json);

    Map<String, dynamic> toJson() => _$retiromodelsToJson(this);
}


