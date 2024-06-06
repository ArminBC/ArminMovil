import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:studybank/core/data/repositories/contactos_repositoryimpl.dart';
import 'package:studybank/models/contactosmodels.dart';

class ContactosRepositoriesimpl implements contactosmodelsRepositorie {
  @override
  Future<contactosmodels> loadForData() async {
    final response = await rootBundle
      .loadString('assets/json_data/contactos.json');
    final data = json.decode(response);
    print(data); 
    return contactosmodels.fromJson(data);
    
  }
}