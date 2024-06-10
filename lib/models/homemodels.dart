import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
part 'homemodels.g.dart';

@JsonSerializable()
class homemodels {
  String username;
  int saldoA;
  String movimiento;
  int saldoM;
  String foto;

  homemodels({
    required this.username,
    required this.saldoA,
    required this.saldoM,
    required this.movimiento,
    required this.foto,
  });

  
    factory homemodels.fromJson(Map<String, dynamic> json) => _$homemodelsFromJson(json);

  get movimientos => "";

  get SaldoA => 0;

  get SaldoM => 0;

    Map<String, dynamic> toJson() => _$homemodelsToJson(this);

  
}