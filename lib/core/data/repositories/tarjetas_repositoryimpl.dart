import 'package:studybank/models/tarjetasmodels.dart';

abstract class tarjetasmodelsRepositorie{
  Future<tarjertasmodels> loadForData();
}