import 'package:flutter/material.dart';


class CrearPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 20,
          ),
          //CREACION DEL TITULO
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
              color: Colors.white,
            ),
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
               decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Titulo', 
                ),
            )
            ),
          ),
          //AGREGAR IMAGENES
          Container(
            margin: EdgeInsets.only(right: 25, left: 25),
            child: Text('Imagenes de portada'),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, top: 20),
            height: 120,
            //color: Colors.green,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                      ),
                      child: Image(
                        image: AssetImage('assets/default.png'),
                      ),
                    ),
                    Container(
                      width: 40,
                      child: Image(
                        image: AssetImage('assets/mas.png')
                      ),
                    ),                
                  ],
                ),
                Container(
                  width: 5,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                  ),
                  child: Image(
                    image: AssetImage('assets/fondo.png'),
                  ),
                ),
                Container(
                  width: 5,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                  ),
                  child: Image(
                    image: AssetImage('assets/fondo.png'),
                  ),
                ),
              ],
            ),
          ),
          //CREACION DE LA DESCRIPCIÓN
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
              color: Colors.white,
            ),
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Descripción', 
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25, left: 25),
            child: Text('Tipo de publicación'),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              width: 250,
              height: 40,
              //color: Colors.green,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    child: ElevatedButton(
                      child: const Text('Noticia'),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                  ),
                  Container(
                    width: 100,
                    child: ElevatedButton(
                      child: const Text('Actividad'),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                        foregroundColor: MaterialStateProperty.all(Colors.blue),
                        shadowColor: MaterialStateProperty.all(Colors.blue),
                        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16))
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}