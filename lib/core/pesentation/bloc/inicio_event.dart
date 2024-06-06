import 'package:equatable/equatable.dart';

abstract class InicioEvent extends Equatable {
  const InicioEvent();

  @override
  List<Object?> get props => [];
}

class LoadFormDataEvent extends InicioEvent {}

class UsernameChanged extends InicioEvent {
  final String username;

  const UsernameChanged(this.username);

  @override
  List<Object?> get props => [username];
}



class PasswordChanged extends InicioEvent {
  final String password;

  const PasswordChanged(this.password);

  @override
  List<Object?> get props => [password];
}



class SaveChanged extends InicioEvent {
  final bool save;

  const SaveChanged(this.save);

  @override
  List<Object?> get props => [save];
}

