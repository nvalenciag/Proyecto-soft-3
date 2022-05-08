import 'dart:ui';

import 'package:appclei/presentation/colors_clei.dart';
import 'package:appclei/presentation/icons_clei_icons.dart';
import 'package:flutter/material.dart';

class EstructuraNavegacion extends StatelessWidget {
  static const Color colorIcono = ColorsCLei.gris;
  static const Color colorIcono2 = ColorsCLei.azulOscuro;
  TextStyle estiloTexto=  const TextStyle(fontFamily: 'LiberationSans',fontSize: 17.0,height: 1.5 );


  EstructuraNavegacion(){



  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    
      iconSize: 30,
      items:  [
        BottomNavigationBarItem(
          backgroundColor: ColorsCLei.grisClaro,
          icon: Icon(
            IconsClei.home,
            color: colorIcono,
          ),
          label: 'Inicio',
         
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconsClei.favorito,
            color: colorIcono,
          ),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconsClei.buscar,
            color: colorIcono,
          ),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconsClei.info,
            color: colorIcono,
          ),
          label: 'Info',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconsClei.perfil,
            color: colorIcono,
            size: 5,
          ),
          label: 'Perfil',
        ),
      ],
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedLabelStyle: estiloTexto,
      selectedLabelStyle: estiloTexto,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,

    );
  }
}
