import 'package:appclei/presentation/colors_clei.dart';
import 'package:flutter/material.dart';


class InfoPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: appBarInformacion(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: Image( 
              image: AssetImage('assets/LogoPrincipal.png')
            ),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: Text("La conferencia latinoamericana de Informática (CLEI) es un evento annual organizado por el centro latinoamericano de Estudios de Informática, y ocurre desde 1974, de modo itinerante por países Latinoamericanos.CLEI es el espacio latinoamericano más importante de intercambio de ideas, experiencias y resultados de investigación entre investigadores, profesionales, docentes, estudiantes de Ciencias de la Computación e Informática, así como sus aplicaciones tecnológicas, por medio de conferencias, talleres, tutoriales, paneles. \nUbicación: Hotel campestre Las Camelias, Armenia, Colombia.\nFecha: 17 al 21 de octubre 2022.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          InkWell(
            child: Text('https://easychair.org/conferences/?conf=clei2022')
          ),
        ],
      ),
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
