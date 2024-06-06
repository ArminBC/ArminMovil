import 'dart:ffi';

class transferencia {
  String name;
  String cuenta;
  Float movimiento;
  String motivo;
  DateTime fecha;


  transferencia({
    required this.name,
    required this.cuenta,
    required this.movimiento,
    required this.motivo,
    required this.fecha,
  });
}

