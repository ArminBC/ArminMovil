
import 'package:json_annotation/json_annotation.dart';
part 'transferenciamodels.g.dart';

@JsonSerializable()
class transferenciamodels {
  final String name;
  final String cuenta;
  final double movimiento;
  final String motivo;
  final DateTime fecha;


  transferenciamodels({
    required this.name,
    required this.cuenta,
    required this.movimiento,
    required this.motivo,
    required this.fecha,
  });
  
  
   factory transferenciamodels.fromJson(Map<String, dynamic> json) => _$transferenciamodelsFromJson(json);

    Map<String, dynamic> toJson() => _$transferenciamodelsToJson(this);
  
}
