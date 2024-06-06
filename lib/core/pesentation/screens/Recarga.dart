import 'package:flutter/material.dart';

class Recarga extends StatefulWidget {
  const Recarga({super.key});

  @override
  State<Recarga> createState() => _RecargaState();
}

class _RecargaState extends State<Recarga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF27374D),
        title: const Text(
          'Servicios',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'SELECCIONA UNA COMUNICACION A PAGAR',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: ListView(
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ServiceTile(icon: Icons.phone, title: 'Telefono'),
                    ServiceTile(icon: Icons.wifi, title: 'Internet'),
                    ServiceTile(
                        icon: Icons.videogame_asset, title: 'Entretenimiento'),
                    // Puedes añadir más ServiceTile aquí para otros servicios
                  ],
                  color: Colors.white30,
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const ServiceTile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF3A475A),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.white, size: 40),
        title: Text(title,
            style: const TextStyle(color: Colors.white, fontSize: 20)),
        onTap: () {
          // Acción al seleccionar el servicio
        },
      ),
    );
  }
}
