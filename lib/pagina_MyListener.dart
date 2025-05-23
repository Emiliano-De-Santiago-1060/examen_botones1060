import 'package:flutter/material.dart';

class MyListener extends StatefulWidget {
  const MyListener({Key? key}) : super(key: key);

  @override
  State<MyListener> createState() => _MyListenerState();
}

class _MyListenerState extends State<MyListener> {
  int _downCounter = 0;
  int _upCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementDown(PointerEvent details) {
    _updateLocation(details);
    setState(() {
      _downCounter++;
    });
  }

  void _incrementUp(PointerEvent details) {
    _updateLocation(details);
    setState(() {
      _upCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'MyListener',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(350.0, 350.0)),
          child: Listener(
            onPointerDown: _incrementDown,
            onPointerMove: _updateLocation,
            onPointerUp: _incrementUp,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Has presionado o soltado dentro de esta área:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '$_downCounter presiones\n$_upCounter liberaciones',
                    style: const TextStyle(fontSize: 22, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Cursor en:\n(${x.toStringAsFixed(1)}, ${y.toStringAsFixed(1)})',
                    style: const TextStyle(fontSize: 18, color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
