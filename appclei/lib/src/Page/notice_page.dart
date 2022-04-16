import 'package:flutter/material.dart';


class NoticePage extends StatelessWidget{

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
                crearNoticia(), Container(width: 10,),
                crearNoticia(), Container(width: 10,),
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
                crearNoticia(), Container(width: 10,),
                crearNoticia(), Container(width: 10,),   
              ],
            ),
          ),
        ],
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
