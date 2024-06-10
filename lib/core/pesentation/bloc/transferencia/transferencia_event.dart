
import 'package:equatable/equatable.dart';

abstract class TransferenciaEvent extends Equatable {
  const TransferenciaEvent();

  @override
  List<Object?> get props => [];
}

class LoadTransferenciaDataEvent extends TransferenciaEvent {}

class MotivoChanged extends TransferenciaEvent {
  final String motivo;

  const MotivoChanged(this.motivo);

  @override
  List<Object?> get props => [motivo];
}

class NameChanged extends TransferenciaEvent {
  final String name;

  const NameChanged(this.name);

  @override
  List<Object?> get props => [name];
}

class CuentaChanged extends TransferenciaEvent {
  final String cuenta;

  const CuentaChanged(this.cuenta);

  @override
  List<Object?> get props => [cuenta];
}

class MovimientoChanged extends TransferenciaEvent {
  final double movimiento;

  const MovimientoChanged(this.movimiento);

  @override
  List<Object?> get props => [movimiento];
}

class FechaChanged extends TransferenciaEvent {
  final DateTime fecha;

  const FechaChanged(this.fecha);

  @override
  List<Object?> get props => [fecha];
}