import 'dart:ffi';

import 'package:flutter/material.dart';

class Noticia {

  String titulo = "";
  String descripcion = "";
  String imagenUrl = "fondo.png";

  Noticia ( String titulo, String descripcion){
    this.titulo = titulo;
    this.descripcion = descripcion;
  }

  Noticia.i ( String titulo, String descripcion, String imagenUrl){
    this.titulo = titulo;
    this.descripcion = descripcion;
    this.imagenUrl = imagenUrl;
  }

  void setTitulo(String titulo){
    this.titulo = titulo;
  }
  void setDescripcion(String descripcion){
    this.descripcion = descripcion;
  }

  String getTitulo(){
    return titulo;
  }

  String getImagen(){
    return imagenUrl;
  }

  String getDescripcion(){
    return descripcion;
  }
}