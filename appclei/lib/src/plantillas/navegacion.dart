import 'package:flutter/material.dart';


class EstructuraNavegacion extends StatelessWidget{
 static const Color colorIcono=Color(0xFF6FCCFF);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFFd9d9d9),
      appBar: AppBar(
        backgroundColor: Color(0xFF212121),
        leading: const Image(
          image: AssetImage('assets/IconoClei.png'),
        ),
        centerTitle: true,
        title: const Text(
          'CLEI',
          style: TextStyle(color: colorIcono),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
         iconSize: 40,
        
        items: const [
          BottomNavigationBarItem(
            backgroundColor:Color(0xFF212121),
            icon: Icon(Icons.home,color: colorIcono,),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star,color: colorIcono,),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page,color: colorIcono,),
            label: 'Búsqueda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,color: colorIcono,),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: colorIcono,),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}


