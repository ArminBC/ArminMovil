import 'package:equatable/equatable.dart';

abstract class ContactosEvent extends Equatable {
  const ContactosEvent();

  @override
  List<Object?> get props => [];
}

class LoadFormDataEvent extends ContactosEvent {}

class NameContacChanged extends ContactosEvent {
  final String namecontac;

  const NameContacChanged(this.namecontac);

  @override
  List<Object?> get props => [namecontac];
}

class NumTarjetChanged extends ContactosEvent {
  final String numtarjet;

  const NumTarjetChanged(this.numtarjet);

  @override
  List<Object?> get props => [numtarjet];
}

class FotoChanged extends ContactosEvent {
  final String foto;

  const FotoChanged(this.foto);

  @override
  List<Object?> get props => [foto];
}

class AliasChanged extends ContactosEvent {
  final String alias;

  const AliasChanged(this.alias);

  @override
  List<Object?> get props => [alias];
}
