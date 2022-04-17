import 'package:appclei/src/Page/noticias_page.dart';
import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
        scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      child: Image(
                      image: AssetImage('assets/lupa.png'),
                      color: Colors.blue,
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: 'Buscar noticia', 
                ),
              )
            ),
            crearNoticia(),Container(height: 10,),
            crearNoticia(),Container(height: 10,),
          ],
        ),
      )
    );
  }  
}

class crearNoticia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey)
      ),
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            child: Image(
              image: AssetImage('assets/fondo.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            color: Colors.white,
            height: 150,
          ),
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 60, left: 40, right: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey)
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                'La Conferencia Latinoamericana de Informatica (CLEI) en armenia',
                style: TextStyle(fontSize: 19),   
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 230, bottom: 20, left: 40, right: 40),
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.all(5),
              child: Text(
                'El evento anual organizado por el centro latinoamericano de estudios de Estudios de Informatica que ocurre desde 1974, de modo itinerante por los paises Latinoamericanos',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey.shade800, fontSize: 11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
