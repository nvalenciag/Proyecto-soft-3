import 'package:flutter/material.dart';


class NoticiasPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const Image(
          image: AssetImage('assets/IconoClei.png'),
        ),
        centerTitle: true,
        title: const Text(
          'CLEI',
          style: TextStyle(color: Colors.blue, fontSize: 45, fontFamily: 'iconlogin',),
        ),
        toolbarHeight: 70,
      ),
      
      body: Column(
        children: [
          Container(
            height: 50,
          ),
          Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child :Text(
            "Noticias",
            style: TextStyle(color: Colors.black,fontSize: 30, fontFamily: 'rileay'),
            textAlign: TextAlign.right,
          ),
        ),
      ), 
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  height: 8,
                  thickness: 3,
                  color: Colors.black,
                )
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 160.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 10,),
                crearNoticias().first,Container(width: 10,),
                crearNoticias().elementAt(1),Container(width: 10,),
                crearNoticias().elementAt(2),Container(width: 10,),
                crearNoticias().elementAt(3),Container(width: 10,),
                crearNoticias().elementAt(4),Container(width: 10,),
                crearNoticias().elementAt(5),Container(width: 10,),
              ],
            ),
          ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child :Text(
            "Actividades del CLEI",
            style: TextStyle(color: Colors.black,fontSize: 30, fontFamily: 'rileay'),
            textAlign: TextAlign.right,
          ),
        ),
      ),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  height: 8,
                  thickness: 3,
                  color: Colors.black,
                  
                )
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 160.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[  
                Container( width: 10, ),  
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],     
      ),
      bottomNavigationBar: BottomNavigationBar( 
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Hola',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page),
            label: 'Jaja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Jaja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Jaja',
          ),          
        ],
      ),
    );
  }
}


class crearContenedorNoticia extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 160.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          //IMAGEN
          Container(
            height: 80,
            decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Row(
              children: [
                //TITULO
                espacioTitulo(),
                //FECHA
                espacioFecha(),
              ],
            ),
          ),
          //DESCRIPCION
          espacioDescripcion(),
        ],
      ),
    );
  }
}

List<crearContenedorNoticia> crearNoticias(){
  List<crearContenedorNoticia> noticias = [];
  for(int i=0; i<=10; i++){
    noticias.add( crearContenedorNoticia());               
  }
  return noticias;
}

class espacioFecha extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container( 
      width:40,
      height: 24,
      color: Colors.green,
      child: Align(
        alignment: Alignment.topRight,
        child: Text('15/04/2022', 
          style: TextStyle(fontSize: 7.5),
        ),
      ),
    );
  }
}

class espacioTitulo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Text('Este es un titulo facha',
        style: TextStyle(fontSize: 20),                   
      ),
      width:110,
      height: 24,
      color: Colors.amber,
    );
  }
}

class espacioDescripcion extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blue,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text('Esto es una descripcion muy mamalona'),
      ),
    );
  }
}

Widget _buildItem( crearContenedorNoticia noticia ) {
  return crearContenedorNoticia();
}