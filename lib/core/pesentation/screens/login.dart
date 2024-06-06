import 'package:flutter/material.dart'; 
import 'package:local_auth/local_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF27374D),
        title: const Text('StudentsBank',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40)),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/perfil.png",
              height: 210,
              width: 210,
            ),
            const SizedBox(height: 20),
            const Text("Hola S**** M**** G****",
                style: TextStyle(color: Colors.white, fontSize: 17)),
            const SizedBox(height: 20),
            const Text("Cambiar usuario",
                style: TextStyle(color: Colors.white, fontSize: 17)),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: _auth, // Aquí añadimos el gesto para iniciar la autenticación
              child: Icon(Icons.fingerprint, color: Colors.white, size: 60),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí se mantiene la redirección
                Navigator.pushReplacementNamed(context, "/home");
              },
              style: ElevatedButton.styleFrom(
                // primary: Colors.white, // Background color
              ),
              child: const Text('Usa tu contraseña',
                      style: TextStyle(
                          color: Colors.black, // Color del texto
                          fontSize: 17)),
            ),
            const SizedBox(height: 20),
            const Text("Registrarse",
                style: TextStyle(color: Colors.white, fontSize: 17)),
          ],
        )
      )
    );
  }

  Future<void> _auth() async {
    bool authenticated = false;
    try {
      authenticated = await _localAuthentication.authenticate(
        localizedReason: "Autenticate para acceder",
        options: AuthenticationOptions(stickyAuth: true, useErrorDialogs: true)
      );
    } catch (e) {
      print(e);
    }
    if (authenticated) {
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      print("Fallo auth");
    }
  }
}
