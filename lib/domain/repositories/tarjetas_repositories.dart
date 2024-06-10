import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:studybank/core/data/repositories/tarjetas_repositoryimpl.dart';
import 'package:studybank/models/tarjetasmodels.dart';

class TarjetasRepositoriesimpl implements tarjetasmodelsRepositorie {
  @override
  Future<tarjertasmodels> loadForData() async {
    final response = await rootBundle
      .loadString('assets/json_data/tarjetas.json');
    final data = json.decode(response);
    print(data); 
    return tarjertasmodels.fromJson(data);
    
  }
}