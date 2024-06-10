import 'package:flutter/material.dart';

class Tarjetas extends StatefulWidget {
  const Tarjetas({super.key});

  @override
  State<Tarjetas> createState() => _TarjetasState();
}

class _TarjetasState extends State<Tarjetas> {
  final List<Map<String, dynamic>> cards = [
    {
      'cardName': 'Santander',
      'cardNumber': '**** **** **** 4265',
      'cardholder': 'Linda Thompson',
      'expiryDate': '12/22',
      'color': '#FF5733', // Rojo
    },
    {
      'cardName': 'Banamex',
      'cardNumber': '**** **** **** 1234',
      'cardholder': 'John Doe',
      'expiryDate': '01/25',
      'color': '#33FF57', // Verde
    },
    {
      'cardName': 'Bamcomer',
      'cardNumber': '**** **** **** 1234',
      'cardholder': 'John Doe',
      'expiryDate': '01/25',
      'color': '#5BBCFF', // Azul
    },

    // Añade más tarjetas aquí con diferentes colores.
  ];

  Color _getColorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF27374D),
        title: const Text('Tarjetas',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24)),
        toolbarHeight: 80,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final cardColor = _getColorFromHex(cards[index]['color']);
          return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                color: cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cards[index]['cardName'],
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            'assets/images/visa_icon.png',
                            height: 50,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        cards[index]['cardNumber'],
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'CARDHOLDER',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      Text(
                        cards[index]['cardholder'],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'EXPIRES',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            cards[index]['expiryDate'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción para agregar una nueva tarjeta
        },
        backgroundColor: Colors.blueAccent, // Color que combine con el AppBar
        child: Icon(Icons.add, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
