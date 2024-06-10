import 'package:json_annotation/json_annotation.dart';
part 'contactosmodels.g.dart';

@JsonSerializable()
class contactosmodels {
  String namecontac;
  String aliascontac;
  String numtarjet;
  String foto;

  contactosmodels({
    required this.namecontac,
    required this.aliascontac,
    required this.numtarjet,
    required this.foto,
  });

  
    factory contactosmodels.fromJson(Map<String, dynamic> json) => _$contactosmodelsFromJson(json);

  get alias => null;

    Map<String, dynamic> toJson() => _$contactosmodelsToJson(this);

  
}
