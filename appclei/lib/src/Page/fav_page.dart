import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          crearNoticia(),
        ],
      ),
    );
  }  
}

class crearNoticia extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
      height: 140,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
        child: Image(
          alignment: Alignment.bottomLeft,
          image: AssetImage('assets/default.png'),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey)
      ),
    );
  }
}