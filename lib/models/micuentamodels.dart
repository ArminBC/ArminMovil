
import 'package:json_annotation/json_annotation.dart';
part '''
micuentamodels.g.dart''';

@JsonSerializable()
class micuentamodels {
  String user;
  String numcuenta;
  String phone;
  String email;
  String foto;

  micuentamodels({
    required this.user,
    required this.numcuenta,
    required this.phone,
    required this.email,
    required this.foto,
  });

  
    factory micuentamodels.fromJson(Map<String, dynamic> json) => _$micuentamodelsFromJson(json);

    Map<String, dynamic> toJson() => _$micuentamodelsToJson(this);

}