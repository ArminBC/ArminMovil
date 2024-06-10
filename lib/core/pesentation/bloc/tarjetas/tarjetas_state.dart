import 'package:equatable/equatable.dart';
import 'package:studybank/models/tarjetasmodels.dart';

class TarjetaState extends Equatable {
  final String nameT;
  final String banco;
  final String numeroT;
  final String tipoT;
  final DateTime? fecha;

  const TarjetaState({
    this.nameT = '',
    this.banco = '',
    this.numeroT = '',
    this.tipoT = '',
    this.fecha, // Permitir que fecha sea nulo
  });

  factory TarjetaState.fromModel(tarjertasmodels model) {
    return TarjetaState(
      nameT: model.nameT,
      banco: model.banco,
      numeroT: model.numeroT,
      tipoT: model.tipoT,
      fecha: model.fecha,
    );
  }

  TarjetaState copyWith({
    String? nameT,
    String? banco,
    String? numeroT,
    String? tipoT,
    DateTime? fecha, required bool isValid,
  }) {
    return TarjetaState(
      nameT: nameT ?? this.nameT,
      banco: banco ?? this.banco,
      numeroT: numeroT ?? this.numeroT,
      tipoT: tipoT ?? this.tipoT,
      fecha: fecha ?? this.fecha,
    );
  }

  @override
  List<Object?> get props => [
        nameT,
        banco,
        numeroT,
        tipoT,
        fecha,
      ];
}