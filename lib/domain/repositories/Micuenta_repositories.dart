import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:studybank/core/data/repositories/Micuenta_repositoryimpl.dart';
import 'package:studybank/models/micuentamodels.dart';

class MicuentaRepositoriesimpl implements MicuentamodelsRepositorie {
  @override
  Future<micuentamodels> loadForData() async {
    final response = await rootBundle
      .loadString('assets/json_data/micuenta.json');
    final data = json.decode(response);
    print(data); 
    return micuentamodels.fromJson(data);
    
  }
}