import 'package:flutter/material.dart';

class Transferencia extends StatefulWidget {
  const Transferencia({super.key});

  @override
  State<Transferencia> createState() => _TransferenciaState();
}

class _TransferenciaState extends State<Transferencia> {
  final TextEditingController _montoController = TextEditingController();
  final TextEditingController _referenciaController = TextEditingController();
  final TextEditingController _motivoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF27374D),
        title: const Text(
          'StudentsBank',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Text(
              'ESTAS ENVIANDO A:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Juan Diego', style: TextStyle(color: Colors.white)),
              subtitle: Text('HSBC - ****8210\n@JuanDM1',
                  style: TextStyle(color: Colors.white)),
              trailing: TextButton(
                onPressed: () {
                  // Acción para cambiar el destinatario
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors
                      .white, // Establece el color de fondo del botón a blanco
                  // primary: Colors
                      // .black, // Establece el color del texto y del ícono (si hay) a negro
                ),
                child: Text(
                  'Cambiar',
                  style: TextStyle(
                      color: Colors
                          .black), // Asegura que el color del texto sea negro
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _montoController,
                    decoration: InputDecoration(
                      labelText: 'Cantidad a enviar',
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                        color: Colors
                            .white),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  Text('Tu saldo disponible: \$288.85',
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _referenciaController,
                    decoration: InputDecoration(
                      labelText: 'Números de referencia',
                      labelStyle: TextStyle(
                          color: Colors
                              .white), // Establece el color del labelText a blanco
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                        color: Colors
                            .white), // Establece el color del texto ingresado a blanco
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _motivoController,
                    decoration: InputDecoration(
                      labelText: 'Motivo',
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                        color: Colors
                            .white),
                    keyboardType: TextInputType.text,
                    maxLength: 100,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/mistarjetas");
                      },
                      child: const Text('Enviar',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            // Agregar botón de enviar u otros widgets aquí si es necesario
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _montoController.dispose();
    _referenciaController.dispose();
    _motivoController.dispose();
    super.dispose();
  }
}
