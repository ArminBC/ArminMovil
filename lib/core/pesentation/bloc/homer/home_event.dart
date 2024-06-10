import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class LoadFormDataEvent extends HomeEvent {}

class UsernameChanged extends HomeEvent {
  final String username;

  const UsernameChanged(this.username);

  @override
  List<Object?> get props => [username];
}

class FotoChanged extends HomeEvent {
  final String foto;

  const FotoChanged(this.foto);

  @override
  List<Object?> get props => [foto];
}

class MovimientosChanged extends HomeEvent {
  final String movimientos;

  const MovimientosChanged(this.movimientos);

  @override
  List<Object?> get props => [movimientos];
}

class SaldoAChanged extends HomeEvent {
  final double SaldoA;

  const SaldoAChanged(this.SaldoA);

  @override
  List<Object?> get props => [SaldoA];
}

class SaldoMChanged extends HomeEvent {
  final double SaldoM;

  const SaldoMChanged(this.SaldoM);

  @override
  List<Object?> get props => [SaldoM];
}
