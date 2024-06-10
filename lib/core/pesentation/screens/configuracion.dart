import 'package:flutter/material.dart';
import 'package:studybank/core/pesentation/screens/login.dart';

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27374D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF27374D),
        title: const Text(
          'Configuracion',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/avatar.png",
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Jesus Arma...",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      title: 'Notificaciónes',
                      description: 'Todo lo que esta pasando',
                      icon: Icons.arrow_forward_ios_outlined,
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: const Color(0xFF27374D),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('Centro de avisos',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text('Contactos',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text('Mis reclamos',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    CustomButton(
                      title: 'Ayuda',
                      description: 'Respuesta a todas tus dudas',
                      icon: Icons.arrow_forward_ios_outlined,
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: const Color(0xFF27374D),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('Soporte al cliente',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {
                                      // Acción al seleccionar la opción 1
                                    },
                                  ),
                                  ListTile(
                                    title: Text('Ayuda con contraseña',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {
                                      // Acción al seleccionar la opción 2
                                    },
                                  ),
                                  ListTile(
                                    title: Text('Sugerencias',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {
                                      // Acción al seleccionar la opción 3
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    CustomButton(
                      title: 'Seguridad',
                      description: 'Cambia tu contraseña, tu NIP, etc...',
                      icon: Icons.arrow_forward_ios_outlined,
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: const Color(0xFF27374D),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('Cambio de contraseña',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text('Cambio de NIP',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text('Cambiar dirección de e-mail',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text(
                                        'Restablecer pregunta de seguridad',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    CustomButton(
                      title: 'Configuraciones datos personales',
                      description: 'Description 4',
                      icon: Icons.arrow_forward_ios_outlined,
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: const Color(0xFF27374D),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('Subir imagen de perfil',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text('Editar mi perfil',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: Text('Editar mi dirección',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    CustomButton(
                      title: 'Cerrar sesion',
                      description: '',
                      icon: Icons.arrow_forward_ios_outlined,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onPressed;

  CustomButton({
    required this.title,
    required this.description,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 52, 52, 52),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  icon,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
