import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => FourthScreenState();
}

class FourthScreenState extends State<FourthScreen> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Pantalla dos',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue, // Fondo azul
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 8.0), // opcional
            ),
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/icon/blue.jpg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/icon/ocean.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ),
        ],
      ),
    );
  }
}
