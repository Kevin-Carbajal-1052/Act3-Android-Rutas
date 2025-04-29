import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Pantalla tres',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  color: Colors.blueGrey,
                  child: AnimatedAlign(
                    alignment:
                        selected ? Alignment.topRight : Alignment.bottomLeft,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: const FlutterLogo(size: 50.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
