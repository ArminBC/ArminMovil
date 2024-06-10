import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:studybank/core/data/repositories/home_repositoryimpl.dart';
import 'package:studybank/models/homemodels.dart';

class homemodelsRepositorieimpl implements homeRepositorie {
  @override
  Future<homemodels> loadForData() async {
    final response = await rootBundle
      .loadString('assets/json_data/home.json');
    final data = json.decode(response);
    print(data); 
    return homemodels.fromJson(data);
    
  }

}
// Comit terminado para todos (Mi).