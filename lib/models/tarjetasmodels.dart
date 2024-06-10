
import 'package:json_annotation/json_annotation.dart';
part 'tarjetasmodels.g.dart';

@JsonSerializable()
class tarjertasmodels {
  String nameT;
  String banco;
  String numeroT;
  DateTime fecha;
  String tipoT;

  tarjertasmodels({
    required this.nameT,
    required this.banco,
    required this.numeroT,
    required this.fecha,
    required this.tipoT,
  });


 
   factory tarjertasmodels.fromJson(Map<String, dynamic> json) => _$tarjertasmodelsFromJson(json);

    Map<String, dynamic> toJson() => _$tarjertasmodelsToJson(this);

}
