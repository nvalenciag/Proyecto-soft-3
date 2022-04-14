
import 'package:appclei/src/Page/inicio_page.dart';
import 'package:appclei/src/Page/login_page.dart';
import 'package:flutter/material.dart';



Map<String,WidgetBuilder> getApplicationRoutes(){

return <String,WidgetBuilder>{
      '/':(BuildContext context)=>LoginPage(),
      '-':(BuildContext context)=>InicioPage(),
    

    };


} 

