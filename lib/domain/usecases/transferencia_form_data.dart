
import 'package:studybank/domain/repositories/transferencias_repositories.dart';
import 'package:studybank/models/transferenciamodels.dart';

class TransformData {
  final TransferenciasRepositoriesimpl transy;

  TransformData(this.transy);

  Future<transferenciamodels> call() async {
    final transdata = await transy.loadForData();

    // Validación de la fecha
    if (transdata.fecha == 0) {
      throw Exception("La fecha no puede estar vacía");
    }

    // Validación del número de cuenta
    if (transdata.cuenta.isEmpty) {
      throw Exception("La cuenta no puede estar vacía");
    }
    if (!isValidAccountNumber(transdata.cuenta)) {
      throw Exception("El número de cuenta es inválido");
    }

    // Validación del motivo del pago
    if (transdata.motivo.isEmpty) {
      throw Exception("El motivo del pago no puede estar vacío");
    }
    if (transdata.motivo.length < 5) {
      throw Exception("El motivo del pago debe tener al menos 5 caracteres");
    }

    // Validación del monto del movimiento
    if (transdata.movimiento == 0) {
      throw Exception("El monto del movimiento no puede ser cero");
    }
    if (transdata.movimiento < 0) {
      throw Exception("El monto del movimiento no puede ser negativo");
    }

    // Validación del nombre del contacto
    if (transdata.name.isEmpty) {
      throw Exception("El nombre del contacto no puede estar vacío");
    }
    if (transdata.name.length < 3) {
      throw Exception("El nombre del contacto debe tener al menos 3 caracteres");
    }

    // Validación del saldo
    if (!isValidSaldo(transdata.saldo)) {
      throw Exception("El saldo debe tener dos decimales");
    }

    // Validación de la tarjeta (no mostrar CVV)
    if (transdata.tarjetaCvv != null) {
      throw Exception("El CVV no debe ser mostrado");
    }

    return transdata;
  }

  // Método para validar el número de cuenta (ejemplo básico)
  bool isValidAccountNumber(String accountNumber) {
    // Verifica que el número de cuenta tenga entre 10 y 12 caracteres y solo contenga dígitos
    final regex = RegExp(r'^\d{10,12}$');
    return regex.hasMatch(accountNumber);
  }

  // Método para validar el saldo
  bool isValidSaldo(double saldo) {
    // Verifica que el saldo tenga exactamente dos decimales
    final regex = RegExp(r'^\d+(\.\d{1,2})?$');
    return regex.hasMatch(saldo.toString());
  }
}
