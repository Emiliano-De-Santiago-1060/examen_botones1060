import 'package:flutter/material.dart';

import 'package:exm_btn_1060/pagina_inicial.dart';
import 'package:exm_btn_1060/pagina_MySingleChildScrollView.dart';
import 'package:exm_btn_1060/pagina_MyDatePicker.dart';
import 'package:exm_btn_1060/pagina_MyCupertinoSearch.dart';
import 'package:exm_btn_1060/pagina_MyFutureBuilder.dart';
import 'package:exm_btn_1060/pagina_MyListener.dart';
import 'package:exm_btn_1060/pagina.MyAnimationBuilder.dart';
import 'package:exm_btn_1060/pagina_MySnackBar.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // Cuando navegamos a la ruta "/", se construye la pantalla PantallaUno
        '/': (context) => const PantallaUno(),
        '/pantalla5': (context) => const MySingleChildScrollView(),
        '/pantalla25': (context) => const MyDatePicker(),
        '/pantalla95': (context) => const MyCupertinoSearch(),
        '/pantalla100': (context) => const MyFutureBuilder(),
        '/pantalla105': (context) => const MyListener(),
        '/pantalla108': (context) => const MyAnimationBuilder(),
        '/pantalla109': (context) => const MySnackBar(),
      },
    );
  }
}
