
import 'package:studybank/domain/repositories/contactos_repositories.dart';
import 'package:studybank/models/contactosmodels.dart';

class contactosformdata {
  final ContactosRepositoriesimpl contacosy;

  contactosformdata(this.contacosy);
  
  Future <contactosmodels> call() async {
    final contactosdata = await contacosy.loadForData();

    if(contactosdata.aliascontac.isEmpty){
      throw  Exception("alias_contac cannon be empty");
    }
    if(contactosdata.foto.isEmpty){
      throw  Exception("foto cannon be empty");
    }
    if(contactosdata.namecontac.isEmpty){
      throw  Exception("name_contac cannon be empty");
    }
    if(contactosdata.numtarjet.isEmpty){
      throw  Exception("num_tarjet cannon be empty");
    }
    
    return contactosdata;
  }
}