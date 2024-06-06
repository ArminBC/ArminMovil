import 'package:studybank/models/retiromodels.dart';

abstract class retiroRepository{
 Future<retiromodels> loadForData();
}