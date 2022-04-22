import 'package:flutter/material.dart';

class VisualisacionPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          //color: Colors.amber,
          child: Stack(
            children: [
              Image(image: AssetImage('assets/fondo.png')),
              Container(
                margin: EdgeInsets.only(top: 200),
                height: 100,
                //color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(top: 150, left: 40, right: 40),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey)
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Text(
                    'La Conferencia Latinoamericana de Informatica (CLEI) en armenia',
                    style: TextStyle(fontSize: 20),   
                  ),
                ),
              ),
              Container( 
                margin: EdgeInsets.only(top: 250, left: 290,),
                //color: Colors.pink,
                height: 20,
                width: 80,
                child: Text('21/04/2022',
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 280, left: 40, right: 40),
                //color: Colors.red,
                child: Text('Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion Esta es la descripcion '),
              )
            ],
          ),
        ),
        Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                  hintText: 'Agregar un comentario', 
                ),
              )
        ),
        crearComentario(),
        crearComentario()
      ],
    );
  }
}

class crearComentario extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30),         
      //color: Colors.purple,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric( horizontal: 10, vertical: 10),         
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.circular(100),
              color: Colors.white,
            ),
            width: 40,
            height: 40,
            child: Image(
              image: AssetImage('assets/perfil.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric( horizontal: 60, vertical: 20),         
            //color: Colors.pink,
            height: 20,
            child: Text('Nombre real',
              style: TextStyle( color: Colors.grey.shade700),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 60, bottom: 10),         
            //color: Colors.pink,
            child: Text('Muy facha la publicacion'),             
          )
        ],
      ),
    );
  }
}