import 'package:equatable/equatable.dart';

abstract class TarjetaEvent extends Equatable {
  const TarjetaEvent();

  @override
  List<Object?> get props => [];
}

class LoadTarjetaDataEvent extends TarjetaEvent {}

class NameTChanged extends TarjetaEvent {
  final String nameT;

  const NameTChanged(this.nameT);

  @override
  List<Object?> get props => [nameT];
}

class BancoChanged extends TarjetaEvent {
  final String banco;

  const BancoChanged(this.banco);

  @override
  List<Object?> get props => [banco];
}

class NumeroTChanged extends TarjetaEvent {
  final String numeroT;

  const NumeroTChanged(this.numeroT);

  @override
  List<Object?> get props => [numeroT];
}

class TipoTChanged extends TarjetaEvent {
  final String tipoT;

  const TipoTChanged(this.tipoT);

  @override
  List<Object?> get props => [tipoT];
}

class FechaChanged extends TarjetaEvent {
  final DateTime fecha;

  const FechaChanged(this.fecha);

  @override
  List<Object?> get props => [fecha];
}