
import 'package:studybank/domain/repositories/home_repositories.dart';
import 'package:studybank/models/homemodels.dart';

class HomeFormData {
  final homemodelsRepositorieimpl homey;

  HomeFormData(this.homey);

  Future<homemodels> call() async {
    final homedata = await homey.loadForData();

    // Validaciones del nombre de usuario
    if (homedata.username == null || homedata.username.isEmpty) {
      throw Exception("El nombre de usuario no puede ser nulo o estar vacío");
    }

    // Validación de la foto
    if (homedata.foto != null && homedata.foto.isEmpty) {
      throw Exception("La foto no puede estar vacía si existe");
    }

    // Validaciones del saldoA
    if (homedata.saldoA < 0) {
      throw Exception("El saldo A no puede ser negativo");
    }
    if (!isValidSaldo(homedata.saldoA as double)) {
      throw Exception("El saldo A debe tener dos decimales y usar comas en las divisiones");
    }

    // Validación del movimiento
    if (homedata.movimiento.isEmpty) {
      throw Exception("El movimiento no puede estar vacío para usuarios existentes");
    }

    // Validaciones del saldoM
    if (homedata.saldoM < 0) {
      throw Exception("El saldo M no puede ser negativo");
    }
    if (!isValidSaldo(homedata.saldoM as double)) {
      throw Exception("El saldo M debe tener dos decimales");
    }

    return homedata;
  }

  // Método para validar el saldo
  bool isValidSaldo(double saldo) {
    // Verifica que el saldo tenga exactamente dos decimales y use comas para las divisiones
    final regex = RegExp(r'^\d{1,3}(,\d{3})*(\.\d{2})?$');
    return regex.hasMatch(saldo.toStringAsFixed(2));
  }
}
