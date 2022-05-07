
import 'dart:convert';


import 'package:http/http.dart' as http;

import 'package:appclei/src/Entidades/Publicacion.dart';
import 'package:appclei/src/models/publicacionModel.dart';

class PublicacionProvider{

final String _url ='https://pruebasignin-6dd62-default-rtdb.firebaseio.com';


Future<bool> crearPublicacion(PublicacionModel publicacion) async{
 final url='$_url/publicaciones.json';

 final  resp = await http.post(Uri.parse(url),body:publicacionModelToJson(publicacion) );

final decodedData =json.decode(resp.body);   
return true;
}



}