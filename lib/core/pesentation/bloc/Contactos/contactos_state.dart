import 'package:equatable/equatable.dart';
import 'package:studybank/models/contactosmodels.dart';

class ContactosState extends Equatable {
  final String namecontac;
  final String numtarjet;
  final String foto;
  final String alias;

  const ContactosState({
    this.namecontac = '',
    this.numtarjet = '',
    this.foto = '',
    this.alias = '',
  });

  factory ContactosState.fromModel(contactosmodels model) {
    return ContactosState(
      namecontac: model.namecontac,
      numtarjet: model.numtarjet,
      foto: model.foto,
      alias: model.alias,
    );
  }

  ContactosState copyWith({
    String? namecontac,
    String? numtarjet,
    String? foto,
    String? alias, required bool isValid,
  }) {
    return ContactosState(
      namecontac: namecontac ?? this.namecontac,
      numtarjet: numtarjet ?? this.numtarjet,
      foto: foto ?? this.foto,
      alias: alias ?? this.alias,
    );
  }

  @override
  List<Object?> get props => [
        namecontac,
        numtarjet,
        foto,
        alias,
      ];
}
