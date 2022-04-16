import 'package:appclei/src/Page/fav_page.dart';
import 'package:appclei/src/Page/notice_page.dart';
import 'package:flutter/material.dart';


class NoticiasPage extends StatefulWidget{

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    NoticePage(),
    FavoritosPage(),
    Text(
      'Index 2: Buscar',
    ),
    Text(
      'Index 2: Info',
    ),
    Text(
      'Index 2: Perfil',
    ),
  ];

  static List<Widget> _tittleOption = <Widget>[
    Text(
      'Home',
      style: TextStyle(fontSize: 30, color: Colors.blue),
    ),
    Text(
      'Favoritos',
      style: TextStyle(fontSize: 30, color: Colors.blue),
    ),
    Text(
      'Buscar',
      style: TextStyle(fontSize: 30, color: Colors.blue),
    ),
    Text(
      'Información',      
      style: TextStyle(fontSize: 30, color: Colors.blue),
    ),
    Text(
      'Perfil',
      style: TextStyle(fontSize: 30, color: Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        leading: Container(
          //color: Colors.green,
          margin: EdgeInsets.symmetric(vertical: 15,),
          child: Image(image: AssetImage('assets/atras.png'),color: Colors.blue),
        ),
        title: _tittleOption.elementAt(_selectedIndex),
        actions: [
          Container(
            //color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            child: Image(image: AssetImage('assets/lupa.png'), color: Colors.blue,)
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar( 
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.home ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.find_in_page),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.people),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
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

class cuadroNoticia extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.grey)
      ),
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only( top: 100, left: 30, right: 30),
              height: 130,
              width: 238,
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
              color: Colors.white,
              margin: const EdgeInsets.only(left: 30, right: 30),
              height: 60,
              width: 238,
              child: Container(
                margin: const EdgeInsets.all(5),
                child: Text(
                  'El evento anual organizado por el centro...',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              ),
            ),
          ],    
        )
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
      color: Colors.green,
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
        color: Colors.red,
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