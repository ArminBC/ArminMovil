import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:studybank/core/data/repositories/transferencia_repositoryimpl.dart';
import 'package:studybank/models/transferenciamodels.dart';

class TransferenciasRepositoriesimpl implements transferenciamodelsRepositorie {
  @override
  Future<transferenciamodels> loadForData() async {
    final response = await rootBundle
      .loadString('assets/json_data/transferencia.json');
    final data = json.decode(response);
    print(data); 
    return transferenciamodels.fromJson(data);
    
  }
}