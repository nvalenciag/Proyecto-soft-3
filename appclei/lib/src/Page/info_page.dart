import 'package:appclei/presentation/colors_clei.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class InfoPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: appBarInformacion(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: Image( 
              image: AssetImage('assets/LogoPrincipal.png')
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Text("La conferencia latinoamericana de Informática (CLEI) es un evento annual organizado por el centro latinoamericano de Estudios de Informática, y ocurre desde 1974, de modo itinerante por países Latinoamericanos.CLEI es el espacio latinoamericano más importante de intercambio de ideas, experiencias y resultados de investigación entre investigadores, profesionales, docentes, estudiantes de Ciencias de la Computación e Informática, así como sus aplicaciones tecnológicas, por medio de conferencias, talleres, tutoriales, paneles. \nUbicación: Hotel campestre Las Camelias, Armenia, Colombia.\nFecha: 17 al 21 de octubre 2022.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: InkWell(
                child: Text('https://easychair.org/conferences/?conf=clei2022',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: Image( 
              image: AssetImage('assets/Organizadores.png')
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Text("Ubicación",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Text("Información relevante",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          )
        ],
      )
    );
  }

  AppBar appBarInformacion() {
    return AppBar(
      title: const Text(
        'Información',
        style: TextStyle(
            color: ColorsCLei.azulOscuro,
            fontFamily: 'Coolvetica',
            fontSize: 30),
      ),
      backgroundColor: Colors.white,
      toolbarHeight: 65,
      elevation: 0.0,
      );
  }
}
