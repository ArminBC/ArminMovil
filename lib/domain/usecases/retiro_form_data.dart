import 'package:studybank/domain/repositories/retiro_repositories.dart';
import 'package:studybank/models/retiromodels.dart';

class RetiroFormData {
  final RetiroRepositorieimpl retiroy;

  RetiroFormData(this.retiroy);
  
  Future<retiromodels> call() async {
    final retirodata = await retiroy.loadForData();

    // Validación del saldoA
    if (retirodata.saldoA < 0) {
      throw Exception("El saldo actual no puede ser negativo");
    }
    if (!retirodata.saldoA.toString().contains('.')) {
      throw Exception("El saldo actual debe tener decimales");
    }

    // Validación del motivo
    if (retirodata.motivo == null) {
      retirodata.motivo = "Sin motivo";
    } else if (!(retirodata.motivo is String)) {
      throw Exception("El motivo debe ser de tipo String");
    }
    if (retirodata.motivo.length > 50) {
      throw Exception("El motivo no puede tener más de 50 caracteres");
    }

    // Validación de la tarjeta
    if (retirodata.tarjetaN == null || retirodata.tarjetaN.isEmpty) {
      throw Exception("El número de tarjeta no puede ser nulo o estar vacío");
    }
    if (retirodata.tarjetaN.length != 16) {
      throw Exception("El número de tarjeta debe tener exactamente 16 dígitos");
    }

    return retirodata;
  }
}
