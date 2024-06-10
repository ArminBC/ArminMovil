

import 'package:studybank/models/transferenciamodels.dart';

abstract class transferenciamodelsRepositorie{
  Future<transferenciamodels> loadForData();
}