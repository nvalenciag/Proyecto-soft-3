import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Container(
                  margin: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                  child: Image(
                    alignment: Alignment.bottomLeft,
                    image: AssetImage('assets/default.png'),
                  ),
                ),
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            height: 150,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            height: 150,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            height: 150,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            height: 150,
            color: Colors.yellow,
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

/**child: 
          Container(
              margin: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
              child: Image(
                alignment: Alignment.bottomLeft,
                image: AssetImage('assets/default.png'),
              ),
            ), */