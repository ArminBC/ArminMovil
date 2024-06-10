import 'package:flutter/material.dart';
import 'package:studybank/core/pesentation/screens/Recarga.dart';
import 'package:studybank/core/pesentation/screens/Servicios.dart';
import 'package:studybank/core/pesentation/screens/ServiciosDomesticos.dart';
import 'package:studybank/core/pesentation/screens/Telefonia.dart';
import 'package:studybank/core/pesentation/screens/Transferencia.dart';
import 'package:studybank/core/pesentation/screens/estadoCuenta.dart';
import 'package:studybank/core/pesentation/screens/index.dart';
import 'package:studybank/core/pesentation/screens/registraruser.dart';
import 'package:studybank/core/pesentation/screens/retiroEfectivo.dart';
import 'package:studybank/core/pesentation/screens/tarjetas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = {
    //Logica de routeo para las vistas de la app
    '/': (context) => const LoginPage(),
    '/registraruser': (context) => const registraruser(),
    '/home': (context) => const Home(),
    '/mistarjetas': (context) => const MisTarjetas(),
    '/transferencia': (context) => const Transferencia(),
    '/estadoCuenta': (context) => const EstadoCuenta(),
    '/tarjetas': (context) => const Tarjetas(),
    '/servicios': (context) => const Servicios(),
    '/retiro': (context) => const RetiroEfectivo(),
    '/domestico': (context) => const ServiciosDomesticos(),
    '/recarga': (context) => const Recarga(),
    '/telefonia': (context) => const Telefonia()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue.shade600,
      ),
      initialRoute: '/',
      routes: _router,
    );
  }
}
