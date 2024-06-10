import 'package:equatable/equatable.dart';
import 'package:studybank/models/homemodels.dart';

class HomeState extends Equatable {
  final String username;
  final String foto;
  final String movimientos;
  final double SaldoA;
  final double SaldoM;

  const HomeState({
    this.username = '',
    this.foto = '',
    this.movimientos = '',
    this.SaldoA = 0,
    this.SaldoM = 0,
  });

  factory HomeState.fromModel(homemodels model) {
    return HomeState(
      username: model.username,
      foto: model.foto,
      movimientos: model.movimientos,
      SaldoA: model.SaldoA,
      SaldoM: model.SaldoM,
    );
  }

  HomeState copyWith({
    String? username,
    String? foto,
    String? movimientos,
    double? SaldoA,
    double? SaldoM, required bool isValid,
  }) {
    return HomeState(
      username: username ?? this.username,
      foto: foto ?? this.foto,
      movimientos: movimientos ?? this.movimientos,
      SaldoA: SaldoA ?? this.SaldoA,
      SaldoM: SaldoM ?? this.SaldoM,
    );
  }

  @override
  List<Object?> get props => [
        username,
        foto,
        movimientos,
        SaldoA,
        SaldoM,
      ];
}
