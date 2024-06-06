import 'package:flutter/material.dart';

class Telefonia extends StatefulWidget {
  const Telefonia({super.key});

  @override
  State<Telefonia> createState() => _TelefoniaState();
}

class _TelefoniaState extends State<Telefonia> {
  // A list of maps to represent the telecommunication companies and their logos
  final List<Map<String, dynamic>> telecomCompanies = [
    {'name': 'Telcel', 'logo': 'assets/images/telcel.png'}, // Add asset path
    {'name': 'Movistar', 'logo': 'assets/images/telcel.png'}, // Add asset path
    {'name': 'AT&T', 'logo': 'assets/images/telcel.png'}, // Add asset path
    {'name': 'Virgin Mobile', 'logo': 'assets/images/telcel.png'}, // Add asset path
    {'name': 'USACell', 'logo': 'assets/images/telcel.png'}, // Add asset path
    {'name': 'UNEFON', 'logo': 'assets/images/telcel.png'}, // Add asset path
    // Add more telecom companies here
  ];

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
              'SELECCIONA UNA TELEFONIA A PAGAR',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: telecomCompanies.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Handle company selection
                      print('${telecomCompanies[index]['name']} selected');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Image.asset(telecomCompanies[index]['logo']),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
