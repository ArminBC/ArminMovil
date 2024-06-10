import 'package:studybank/domain/repositories/login_repositories.dart';
import 'package:studybank/models/loginmodels.dart';


class LoginFormData {
  final loginmodelsRepositorieimpl loginy;

  LoginFormData(this.loginy);
  
  Future<loginmodels> call() async {
    final logindata = await loginy.loadForData();

    // Validaciones del nombre de usuario
    if (logindata.username.isEmpty) {
      throw Exception("El nombre de usuario no puede estar vacío");
    }
    if (logindata.username.length > 30) {
      throw Exception("El nombre de usuario no puede exceder 30 caracteres");
    }
    if (!logindata.username.contains(RegExp(r'[A-Z]'))) {
      throw Exception("El nombre de usuario debe contener al menos una letra mayúscula");
    }

    // Validaciones de la contraseña
    if (logindata.password.isEmpty) {
      throw Exception("La contraseña no puede estar vacía");
    }
    if (logindata.password.length < 10 || logindata.password.length > 20) {
      throw Exception("La contraseña debe tener entre 10 y 20 caracteres");
    }
    if (!logindata.password.contains(RegExp(r'[A-Z]'))) {
      throw Exception("La contraseña debe contener al menos una letra mayúscula");
    }
    if (!logindata.password.contains(RegExp(r'[0-9]'))) {
      throw Exception("La contraseña debe contener al menos un número");
    }
    if (!logindata.password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      throw Exception("La contraseña debe contener al menos un carácter especial");
    }
    if (logindata.password.contains(RegExp(r'(123|234|345|456|567|678|789|890|012)'))) {
      throw Exception("La contraseña no puede contener secuencias numéricas como '123'");
    }
    if (logindata.password.contains(RegExp(r'(ABC|DEF|GHI|JKL|MNO|PQR|STU|VWX|YZA)'))) {
      throw Exception("La contraseña no puede contener secuencias de letras como 'ABC'");
    }

    // Validación del checkbox "save"
    if (logindata.save == null) {
      throw Exception("El campo 'Guardar' no puede estar vacío");
    }


    return logindata;
  }

  // Método para validar el saldo
  bool isValidSaldo(double saldo) {
    // Verifica que el saldo tenga exactamente dos decimales
    final regex = RegExp(r'^\d+(\.\d{1,2})?$');
    return regex.hasMatch(saldo.toString());
  }
}
