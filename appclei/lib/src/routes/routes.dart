
import 'package:appclei/src/Page/crear_page.dart';
import 'package:appclei/src/Page/inicio_page.dart';
import 'package:appclei/src/Page/login_page.dart';
import 'package:appclei/src/Page/perfil_page.dart';
import 'package:appclei/src/plantillas/navegacion.dart';
import 'package:flutter/material.dart';



Map<String,WidgetBuilder> getApplicationRoutes(){

return <String,WidgetBuilder>{
      '/':(BuildContext context)=>LoginPage(),
      '-':(BuildContext context)=>InicioPage(),
      '.':(BuildContext context)=>EstructuraNavegacion(),
      '+':(BuildContext context)=>CrearPage(),
      
    

    };


} 

