import 'package:flutter/material.dart';


class NoticiasPage extends StatefulWidget{

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const Image(
          color: Colors.cyan,
          image: AssetImage('assets/IconoClei.png'),
        ),
        centerTitle: true,
        title: const Text(
          'CLEI',
          style: TextStyle(color: Colors.cyan, fontSize: 45, fontFamily: 'relay',),
        ),
        toolbarHeight: 70,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  suffixIcon: Image(
                    image: AssetImage('assets/lupa.png'),
                  ),
                ),
              ),
            ),
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
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 10,),
                crearNoticias().first,Container(width: 10,),
                crearNoticias().elementAt(1),Container(width: 10,),
                crearNoticias().elementAt(2),Container(width: 10,),
                crearNoticias().elementAt(3),Container(width: 10,),
                crearNoticias().elementAt(4),Container(width: 10,),
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
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[  
                Container(width: 10,),
                crearNoticias().first,Container(width: 10,),
                crearNoticias().elementAt(1),Container(width: 10,),
                crearNoticias().elementAt(2),Container(width: 10,),
                crearNoticias().elementAt(3),Container(width: 10,),
                crearNoticias().elementAt(4),Container(width: 10,),
              ],
            ),
          ),
        ],     
      ),
      bottomNavigationBar: BottomNavigationBar( 
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.home ),
            label: 'add',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.star),
            label: 'Hola',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.find_in_page),
            label: 'Jaja',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.info),
            label: 'Jaja',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.people),
            label: 'Jaja',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

/**
 * currentIndex: _selectedIndex,
        onTap: (index){
          
        },
 */


class crearContenedorNoticia extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 160.0,
      decoration: BoxDecoration(
        color: Colors.grey[850] ,
        borderRadius: BorderRadius.circular(20),
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
      //color: Colors.green,
      child: Align(
        alignment: Alignment.topRight,
        child: Text('15/04/2022', 
          style: TextStyle(fontSize: 7.5, color: Colors.white),
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
      width:100,
      height: 24,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      //color: Colors.red,
        child: Text( "TITULO",
        style: TextStyle(fontSize: 20, color: Colors.white),                   
      ),
    );
  }
}

class espacioDescripcion extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //color: Colors.blue,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 
        style: TextStyle(color: Colors.white, fontSize: 12),),
      ),
    );
  }
}

Widget _buildItem( crearContenedorNoticia noticia ) {
  return crearContenedorNoticia();
}