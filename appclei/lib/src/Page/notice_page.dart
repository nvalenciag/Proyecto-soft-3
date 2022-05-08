import 'package:appclei/src/Page/inicio_page.dart';
import 'package:appclei/src/Page/noticia.dart';
import 'package:appclei/src/Page/visualizacion_page.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget{

  Noticia miNoticia = Noticia.i( "Un título fachaaaa", "Una descrición aún más facha", "fondo.png" );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical,
        children: [
          Container(
            //color: Colors.red,
            height: 80,
            width: 200,
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Container(
                  //color: Colors.black,
                  width: 300,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child :Text(
                      "Noticias",
                      style: TextStyle(color: Colors.blue,fontSize: 30, fontFamily: 'relaway'),
                    ),
                  ),
                ),
                Container(
                  //color: Colors.green,
                  child: Row(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child :Text(
                            "Todas",
                            style: TextStyle(color: Colors.blue,fontSize: 20, fontFamily: 'relaway'),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        //color: Colors.green,
                        width: 20,
                        child: Image(image: AssetImage('assets/next.png'),color: Colors.blue,),
                      )
                    ],
                  ),                
                )
              ]
            ,),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            //color: Colors.green,
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 10,),
                crearNoticia(miNoticia), Container(width: 10,),
              ],
            ),
          ),
        Container(
            //color: Colors.red,
            height: 50,
            width: 200,
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Container(
                  //color: Colors.black,
                  width: 300,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child :Text(
                      "Actividades CLEI",
                      style: TextStyle(color: Colors.blue,fontSize: 30, fontFamily: 'relaway'),
                    ),
                  ),
                ),
                Container(
                  //color: Colors.green,
                  child: Row(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child :Text(
                            "Todas",
                            style: TextStyle(color: Colors.blue,fontSize: 20, fontFamily: 'relaway'),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        //color: Colors.green,
                        width: 20,
                        child: Image(image: AssetImage('assets/next.png'),color: Colors.blue,),
                      )
                    ],
                  ),                
                )
              ]
            ,),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 10,),
                crearNoticia(miNoticia), Container(width: 10,),
              ],
            ),
          ),
        ],
    );
  }
}

class crearNoticia extends StatelessWidget{

  Noticia miNoticia = Noticia( "", "");

  crearNoticia( Noticia miNoticia ){
    this.miNoticia = miNoticia;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey)
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed( 
            context, ''
          );
        },
        child: Stack(
          children: [
            Container(
              //color: Colors.red,
              child: Image(
                image: AssetImage("assets/"+miNoticia.getImagen()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              color: Colors.white,
              height: 150,
            ),
            Container(
              margin: EdgeInsets.only(top: 100, bottom: 60, left: 40, right: 40),
              width: 220,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey)
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                  miNoticia.getTitulo(),
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
                  miNoticia.getDescripcion(),
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}