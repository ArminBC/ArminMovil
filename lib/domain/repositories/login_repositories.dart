
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:studybank/core/data/repositories/login_repositoryimpl.dart';
import 'package:studybank/models/loginmodels.dart';

class loginmodelsRepositorieimpl implements loginmodelsRepositorie {
  @override
  Future<loginmodels> loadForData() async {
    final response = await rootBundle
      .loadString('assets/json_data/login.json');
    final data = json.decode(response);
    print(data); 
    return loginmodels.fromJson(data);
    
  }

}

