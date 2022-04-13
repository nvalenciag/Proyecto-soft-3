
import 'package:appclei/src/Page/InicioPage.dart';
import 'package:flutter/material.dart';



Map<String,WidgetBuilder> getApplicationRoutes(){

return <String,WidgetBuilder>{
      '/':(BuildContext context)=>InicioPage(),
    

    };


} 

