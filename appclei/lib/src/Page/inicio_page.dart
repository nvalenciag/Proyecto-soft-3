import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const Image(
          image: AssetImage('assets/IconoClei.png'),
        ),
        centerTitle: true,
        title: const Text(
          'CLEI',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline_rounded, color: Colors.blue),
              label: 'Informacion'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blue), label: 'Home'),
        ],
      ),
    );
  }
}
