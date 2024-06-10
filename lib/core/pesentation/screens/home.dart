import 'package:flutter/material.dart';
import 'package:studybank/core/pesentation/screens/configuracion.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/avatar.png",
              height: 45,
              width: 45,
            ),
            const SizedBox(width: 10), // Espacio entre el avatar y el texto
            const Text(
              "Jesus Arma...",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20, // Ajusta el tamaño del icono según necesites
            ),
          ],
        ),
        backgroundColor: const Color(0xFF27374D), // Color de fondo para AppBar
        elevation: 0, // Elimina la sombra debajo del AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Saldo Actual',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "13,370.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/tarjetas");
                          },
                          child: const Text(
                            'Mis Tarjetas',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/tarjeta-de-credito.png",
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
                height: 20), // Espacio entre el Row y los nuevos botones
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/mistarjetas");
                    },
                    child: Row(
                      children: [
                        Icon(Icons.transfer_within_a_station,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        SizedBox(width: 10),
                        Text(
                          'Transferencia',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                      backgroundColor: Color.fromARGB(255, 52, 52, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, "/retiro");
                    },
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        SizedBox(width: 10),
                        Text('Retiros', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                      backgroundColor: Color.fromARGB(255, 52, 52, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/servicios");
                    },
                    child: Row(
                      children: [
                        Icon(Icons.payment,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        SizedBox(width: 10),
                        Text('Pago de servicios', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                      backgroundColor: Color.fromARGB(255, 52, 52, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/estadoCuenta");
                    },
                    child: Row(
                      children: [
                        Icon(Icons.receipt,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        SizedBox(width: 10),
                        Text('Estado Cuenta', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                      backgroundColor: Color.fromARGB(255, 52, 52, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Configuracion()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.more_horiz,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        SizedBox(width: 10),
                        Text(
                          'Configuracion',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                      backgroundColor: Color.fromARGB(255, 52, 52, 52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[800], // Fondo gris oscuro
                borderRadius: BorderRadius.circular(5.0), // Bordes redondeados
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Ultimos movimientos',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.filter_list, color: Colors.white),
                              SizedBox(width: 5),
                              Text('Filtros',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Buscar movimientos',
                                hintStyle: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 206, 206, 206)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(255, 42, 42, 42),
                                suffixIcon:
                                    Icon(Icons.search, color: Colors.white),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Hoy',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    _buildMovimientoItem(
                      iconPath: 'assets/images/transferencia.png',
                      titulo: 'Transferencia',
                      hora: '12:00 pm',
                      monto: '+ \$5100.00',
                    ),
                    _buildMovimientoItem(
                      iconPath: 'assets/images/transferencia.png',
                      titulo: 'Pago',
                      hora: '10:30 am',
                      monto: '+ \$200.00',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Ultima semana',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    _buildMovimientoItem2(
                      iconPath: 'assets/images/transferencia.png',
                      titulo: 'Netflix',
                      hora: '9:45 am',
                      monto: '- \$150.00',
                    ),
                    _buildMovimientoItem2(
                      iconPath: 'assets/images/transferencia.png',
                      titulo: 'Amazon',
                      hora: '6:20 am',
                      monto: '- \$3000.00',
                    ),
                    _buildMovimientoItem(
                      iconPath: 'assets/images/transferencia.png',
                      titulo: 'Mercado libre',
                      hora: '16:12 pm',
                      monto: '+ \$150.00',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovimientoItem({
    required String iconPath,
    required String titulo,
    required String hora,
    required String monto,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(iconPath),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: TextStyle(color: Colors.white)),
                Text(hora, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text(
            monto,
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovimientoItem2({
    required String iconPath,
    required String titulo,
    required String hora,
    required String monto,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(iconPath),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: TextStyle(color: Colors.white)),
                Text(hora, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text(
            monto,
            style: TextStyle(
              color: Color.fromARGB(255, 214, 72, 72),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
