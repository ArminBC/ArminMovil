// Asumiendo que tienes un archivo de rutas donde defines algo como:
// '/servicios': (context) => ServiciosScreen(),

import 'package:flutter/material.dart';

class Servicios extends StatefulWidget {
  const Servicios({super.key});

  @override
  State<Servicios> createState() => _ServiciosState();
}

class _ServiciosState extends State<Servicios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        elevation: 0, // Remove the drop shadow
        backgroundColor: const Color(0xFF27374D),
        title: const Text('Pago de Servicios',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24)), // Adjusted font size to match your design
        toolbarHeight: 80,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enviar pagos a contactos o personas',
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Username, Num. Tarjeta...',
                hintStyle: TextStyle(
                    color: Colors
                        .white), // Establece el color del texto del hintText a blanco
                suffixIconColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          // ... Barra de búsqueda
          SizedBox(height: 40),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                // Cada ítem ahora tiene un callback onTap que lleva a la ruta específica
                _buildGridItem('Servicios', Icons.home, '/domestico'),
                _buildGridItem('Comunicacion', Icons.wifi, '/recarga'),
                _buildGridItem(
                    'Tiempo Aire', Icons.phone_android, '/telefonia'),
                _buildGridItem('Otros', Icons.shopping_cart, '/home'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title, IconData icon, String route) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          // Cuando se toca el ítem, se navega a la ruta especificada
          Navigator.pushNamed(context, route);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80),
            Text(title, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
