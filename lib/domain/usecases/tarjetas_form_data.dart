

import 'package:studybank/domain/repositories/tarjetas_repositories.dart';
import 'package:studybank/models/tarjetasmodels.dart';

class tarjetasformdata {
  final TarjetasRepositoriesimpl tarjetasy;

  tarjetasformdata(this.tarjetasy);
  
  Future <tarjertasmodels> call() async {
    final tarjetadata = await tarjetasy.loadForData();

    if(tarjetadata.banco.isEmpty){
      throw  Exception("Nombre_banco cannon be empty");
    }
    if(tarjetadata.fecha == null){
      throw  Exception("Fecha_cannon be empty");
    }
    if(tarjetadata.nameT.isEmpty){
      throw  Exception("Nombre_de_la_tarjeta cannon be empty");
    }
    if(tarjetadata.numeroT.isEmpty){
      throw  Exception("Nomero_tarjetaa_usuario cannon be empty");
    }
    if(tarjetadata.tipoT.isEmpty){
      throw  Exception("Tipp_tarjeta cannon be empty");
    }
    return tarjetadata;
  }
}