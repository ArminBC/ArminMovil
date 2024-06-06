import 'package:equatable/equatable.dart';
import 'package:studybank/models/loginmodels.dart';

class InicioState extends Equatable {
  final String username;
  final String password;
  final bool save;

  const InicioState({
    this.username = '',
    this.password = '',
    this.save = false,
  });

  factory InicioState.fromModel(loginmodels model) {
    return InicioState(
      username: model.username,
      password: model.password,
      save: model.save  ,
    );
  }

  InicioState copyWith({
    String? username,
    String? password,
    bool? save, required bool isValid, 
  }) {
    return InicioState(
      username: username ?? this.username,
      password: password ?? this.password,
      save: save ?? this.save,
    );
  }

  @override
  List<Object?> get props => [
        username,
        password,
        save,
      ];
}
