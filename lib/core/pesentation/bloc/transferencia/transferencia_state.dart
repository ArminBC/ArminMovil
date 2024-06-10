import 'package:equatable/equatable.dart';
import 'package:studybank/models/transferenciamodels.dart';

class TransferenciaState extends Equatable {
  final String motivo;
  final String name;
  final String cuenta;
  final double movimiento;
  final DateTime fecha;

  const TransferenciaState({
    this.motivo = '',
    this.name = '',
    this.cuenta = '',
    this.movimiento = 0.0,
    required this.fecha,
  });

  factory TransferenciaState.fromModel(transferenciamodels model) {
    return TransferenciaState(
      motivo: model.motivo,
      name: model.name,
      cuenta: model.cuenta,
      movimiento: model.movimiento,
      fecha: model.fecha,
    );
  }

  TransferenciaState copyWith({
    String? motivo,
    String? name,
    String? cuenta,
    double? movimiento,
    DateTime? fecha, required bool isValid,
  }) {
    return TransferenciaState(
      motivo: motivo ?? this.motivo,
      name: name ?? this.name,
      cuenta: cuenta ?? this.cuenta,
      movimiento: movimiento ?? this.movimiento,
      fecha: fecha ?? this.fecha,
    );
  }

  @override
  List<Object?> get props => [
        motivo,
        name,
        cuenta,
        movimiento,
        fecha,
      ];
}