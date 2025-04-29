import 'package:flutter/material.dart';
import 'package:carbajalrutas/pagina_inicial.dart';
import 'package:carbajalrutas/pagina_dos.dart';
import 'package:carbajalrutas/pagina_tres.dart';
import 'package:carbajalrutas/pagina_cuatro.dart';
import 'package:carbajalrutas/pagina_cinco.dart';
import 'package:carbajalrutas/pagina_seis.dart';
import 'package:carbajalrutas/pagina_siete.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
        '/fifth': (context) => const FifthScreen(),
        '/sixth': (context) => const SixthScreen(),
        '/seventh': (context) => const SeventhScreen(),
      },
    );
  }
}
