import 'package:appclei/src/Entidades/Usuario.dart';
import 'package:appclei/src/Page/crear_page.dart';
import 'package:appclei/src/Page/fav_page.dart';
import 'package:appclei/src/Page/notice_page.dart';
import 'package:appclei/src/Page/perfil_page.dart';
import 'package:appclei/src/Page/visualizacion_page.dart';
import 'package:flutter/material.dart';


class InicioPage extends StatefulWidget{

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    NoticePage(),
    FavoritosPage(),
    Text(
      'Index 2: Buscar',
    ),
    CrearPage(),
    PerfilPage(usuario: Usuario(nombre: '', correo: '', rutaImagen: ''),),
  ];

   visualizar(){
    print('a');
  }

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
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(237, 237, 236, 1),
            icon: Image(image: AssetImage('assets/home.png'),width: 30, color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(237, 237, 236, 1),
            icon: Image(image: AssetImage('assets/fav.png'),width: 30, color: Colors.grey,),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(237, 237, 236, 1),
            icon: Image(image: AssetImage('assets/lupa.png'),width: 30, color: Colors.grey,),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(237, 237, 236, 1),
            icon: Image(image: AssetImage('assets/info.png'),width: 30, color: Colors.grey,),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(237, 237, 236, 1),
            icon: Image(image: AssetImage('assets/perfil.png'),width: 30,color: Colors.grey,),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        //selectedFontSize: 15,
        showUnselectedLabels: true,
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