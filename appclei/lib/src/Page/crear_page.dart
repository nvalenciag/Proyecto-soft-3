import 'package:flutter/material.dart';


class CrearPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const Image(
          image: AssetImage('assets/IconoClei.png'),
        ),
        centerTitle: true,
        title: const Text(
          'Crear',
          style: TextStyle(color: Colors.blue, fontSize: 45, fontFamily: 'iconlogin',),
        ),
        toolbarHeight: 70,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 20,
          ),
          //CREACION DEL TITULO
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            //color: Colors.green,
            height: 85,
            child: ListView(
              children: [
                Text('TITULO', style: TextStyle(fontSize: 19),),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                    ),
                  ),
                ),
              ],
            ),
          ),
          //CREACION DE LA DESCRIPCIÓN
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            //color: Colors.green,
            height: 110,
            child: ListView(
              children: [
                Text('DESCRIPCIÓN', style: TextStyle(fontSize: 19),),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        maxLines: 3,
                      ),
                  ),
                ),
              ],
            ),
          ),
          //AGREGAR IMAGEN
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            //color: Colors.green,
            height: 110,
            child: ListView(
              children: [
                Text('IMAGEN', style: TextStyle(fontSize: 19),),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.yellow,
                            width: 70,
                            height: 70,
                            child: Image( image: AssetImage('assets/default.png'),),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            //color: Colors.green,
                            width: 280,
                            child: Text('Agregar imagenes...', style: TextStyle(fontSize: 30, color: Colors.grey),),
                          )
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            //color: Colors.green,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: Colors.grey[700],
                  width: 80,
                  height: 80,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: Colors.grey[700],
                  width: 80,
                  height: 80,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: Colors.grey[700],
                  width: 80,
                  height: 80,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: Colors.grey[700],
                  width: 80,
                  height: 80,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: Colors.grey[700],
                  width: 80,
                  height: 80,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            //color: Colors.green,
            height: 85,
            child: ListView(
              children: [
                Text('ENCUESTA', style: TextStyle(fontSize: 19),),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}