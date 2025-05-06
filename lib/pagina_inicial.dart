import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Inicial',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.red, // Fondo rojo
        centerTitle: true, // Centrar el texto
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centra los elementos verticalmente
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('MySingleChildScrollView'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre botones
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla25');
              },
              child: const Text('MyDatePicker'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre botones
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla95');
              },
              child: const Text('MyCupertinoSearch'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre b
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla100');
              },
              child: const Text('MyFutureBuilder'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre b
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla105');
              },
              child: const Text('MyListener'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre b
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla108');
              },
              child: const Text('MyAnimationBuilder'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre b
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla109');
              },
              child: const Text('MySnackBar'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre b
        ],
      ),
    );
  }
}
