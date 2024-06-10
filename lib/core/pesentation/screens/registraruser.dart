// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, camel_case_types

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class registraruser extends StatefulWidget {
  const registraruser({super.key});

  @override
   _registrarU createState() => _registrarU();
}

class _registrarU extends State<registraruser> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(context), 
      
    );
  }
}

Widget cuerpo(BuildContext context){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://i.pinimg.com/originals/0b/d0/8a/0bd08a1ef5e540444906546b46eedd43.png"),
        fit: BoxFit.cover
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           banco(),
           user(),
           password(),
           rpassword(),
           SizedBox(height: 10,),
           ingresar(context) // Pasando el contexto aquí
          ],
        )),
  );
}

Widget ingresar(BuildContext context){
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 253, 253)),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 70, vertical: 20)),
    ),
    onPressed: () {
      Navigator.pushReplacementNamed(context, "/");
    },
    child: Text("Ingresar"),
  );
}



Widget banco(){
  return Transform.translate(
    offset: Offset(0, -70), // Ajusta el desplazamiento vertical (-50 moverá el texto hacia arriba)
    child: Text(
      "Registrar",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40.0, // Ajusta el tamaño de la fuente
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}



Widget user(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 4),
    child: TextField(
      decoration:InputDecoration(
        hintText: "Usuario",
        fillColor:Color.fromARGB(225, 255, 255, 255),
        filled: true, 
      ),
    ),
  );
}

Widget password(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 4),
    child: TextField(
      obscureText: true,
      decoration:InputDecoration(
        hintText: "Password",
        fillColor: Color.fromARGB(225, 255, 255, 255),
        filled: true, 
      ),
    ),
  );
}

Widget rpassword(){
  return Container( 
    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 4),
    child: TextField(
      obscureText: true,
      decoration:InputDecoration(
        hintText: "Confirm password",
        fillColor: Color.fromARGB(225, 255, 255, 255),
        filled: true, 
      ),
    ),
  );
}

// Widget ingresar(BuildContext context){
//   return ElevatedButton(
//     style: ButtonStyle(
//       backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 253, 253)),
//       foregroundColor: MaterialStateProperty.all(Colors.black),
//       padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 70, vertical: 20)),
//     ),
//     onPressed: () {
//       // Aquí se mantiene la redirección
//       Navigator.pushReplacementNamed(context, "/");
//     },
//     child: Text("Ingresar"),
//   );
// }
