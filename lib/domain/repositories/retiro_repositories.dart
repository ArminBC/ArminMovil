import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:studybank/core/data/repositories/retiro_repositoryimpl.dart';
import 'package:studybank/models/retiromodels.dart';

class RetiroRepositorieimpl implements retiroRepository {
  @override
  Future<retiromodels> loadForData() async {
    final response = await rootBundle
      .loadString('assets/json_data/retiro.json');
    final data = json.decode(response);
    print(data); 
    return retiromodels.fromJson(data);
    
  }

}