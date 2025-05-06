import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoSearch extends StatefulWidget {
  const MyCupertinoSearch({Key? key}) : super(key: key);

  @override
  State<MyCupertinoSearch> createState() => _MyCupertinoSearchState();
}

class _MyCupertinoSearchState extends State<MyCupertinoSearch> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'MyCupertinoSearch',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CupertinoSearchTextField(
              controller: _textController,
              placeholder: 'Buscar...',
              backgroundColor: Colors.white,
              onChanged: (value) {
                // aquí puedes agregar lógica de búsqueda si deseas
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Texto escrito: ${_textController.text}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
