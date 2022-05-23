import 'dart:math';

import 'package:appclei/src/Entidades/Usuario.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test( 'crear', (){
    Usuario miUsuario = new Usuario(nombre: "Juan", correo: "Juan@gmail.com", rutaImagen: "assets/logo.png");
    expect( miUsuario, isNotNull);
  });
  test( 'actualizar', (){
    Usuario miUsuario = new Usuario(nombre: "Juan", correo: "Juan@gmail.com", rutaImagen: "assets/logo.png");
    miUsuario.setNombre("pepe");
    expect( miUsuario.getNombre, "pepe");
  });
  test( 'borrar', (){
    Usuario miUsuario = new Usuario(nombre: "Juan", correo: "Juan@gmail.com", rutaImagen: "assets/logo.png");
    List<Usuario> usuarios = [miUsuario];
    usuarios.remove(miUsuario);
    expect( usuarios.length, 0);
  });
  test( 'imprimir', (){
    Usuario miUsuario = new Usuario(nombre: "Juan", correo: "Juan@gmail.com", rutaImagen: "assets/logo.png");
    print(miUsuario.getNombre);
    expect(miUsuario.getNombre, "Juan");
  });
}