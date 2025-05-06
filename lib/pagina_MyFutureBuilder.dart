import 'package:flutter/material.dart';

class MyFutureBuilder extends StatefulWidget {
  const MyFutureBuilder({Key? key}) : super(key: key);

  @override
  State<MyFutureBuilder> createState() => _MyFutureBuilderState();
}

// Simulación de datos asincrónicos
Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 1));
  return '¡Datos cargados con éxito!';
}

class _MyFutureBuilderState extends State<MyFutureBuilder> {
  late Future<String> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = getData();
  }

  void _refreshData() {
    setState(() {
      _futureData = getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'MyFutureBuilder',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: _futureData,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(fontSize: 18, color: Colors.red),
              );
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    snapshot.data!,
                    style: const TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _refreshData,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[400],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 12),
                    ),
                    child: const Text(
                      'Recargar',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
