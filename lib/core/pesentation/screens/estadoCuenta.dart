import 'package:flutter/material.dart';

class EstadoCuenta extends StatefulWidget {
  const EstadoCuenta({super.key});

  @override
  State<EstadoCuenta> createState() => _EstadoCuentaState();
}

class _EstadoCuentaState extends State<EstadoCuenta> {
  // Example data for account statements
  final Map<String, List<Map<String, dynamic>>> accountStatements = {
    '2024': [
      {'month': 'Enero, 2024', 'amount': '\$5,345'},
    ],
    '2023': [
      {'month': 'Diciembre, 2023', 'amount': '\$1,345'},
      {'month': 'Noviembre, 2023', 'amount': '\$2,345'},
      {'month': 'Octubre, 2023', 'amount': '\$1,345'},
      {'month': 'Septiembre, 2023', 'amount': '\$9,845'},
      {'month': 'Agosto, 2023', 'amount': '\$4,345'},
      // Add more statements here
    ],
    // Add more years here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        elevation: 0, // Remove the drop shadow
        backgroundColor: const Color(0xFF27374D),
        title: const Text('Estados de cuenta',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24)), // Adjusted font size to match your design
        toolbarHeight: 80,
      ),
      body: ListView.builder(
        itemCount: accountStatements.keys.length,
        itemBuilder: (context, index) {
          String year = accountStatements.keys.elementAt(index);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(year, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Column(
                  children: accountStatements[year]!.map((statement) => Container(
                    margin: const EdgeInsets.only(bottom: 40.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3A475C),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      title: Text(
                        statement['month'],
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.0),
                      subtitle: Text(
                        statement['amount'],
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Handle the tap event here
                      },
                    ),
                  )).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: EstadoCuenta()));
