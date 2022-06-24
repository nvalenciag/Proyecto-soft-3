import 'package:appclei/presentation/icons_clei_icons.dart';
import 'package:appclei/src/Entidades/Usuario.dart';
import 'package:appclei/src/models/publicacionModel.dart';
import 'package:appclei/src/providers/publicacion_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'noticia.dart';

class StudioPage extends StatefulWidget {
 
  Usuario usuario=Usuario(nombre: "", correo: "", rutaImagen: "");

 StudioPage({required this.usuario});
  @override
  State<StudioPage> createState() => _StudioPageState();
}

class _StudioPageState extends State<StudioPage> {
  Noticia miNoticia = Noticia.i("", "",
      "https://avalos.sv/wp-content/uploads/default-featured-image.png");
   

  final publicacionProvider = PublicacionProvider();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: _crearListado(),
      )),
      appBar: AppBar(
        actions: [
          IconButton(
            iconSize: 40,
            icon: const Icon(
              Icons.add_box_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '+');
            },
          )
        ],
        title: const Text(
          'Inicio',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Crear Publicacion',
              fontSize: 30),
        ),
        leading: IconButton(
          icon: const Icon(IconsClei.flecha),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }

  Widget _crearListado() {
    return FutureBuilder(
        future: publicacionProvider.cargarPublicacion(),
        builder: (BuildContext context,
            AsyncSnapshot<List<PublicacionModel>> snapshot) {
          if (snapshot.hasData) {
            final publicacion = snapshot.data;
            int num = publicacion!.length;
            return ListView.builder(
              itemCount: num,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, num) {
                Noticia miNoti = Noticia.i(
                    publicacion[num].titulo,
                    publicacion[num].descripcion,
                    publicacion[num].fotoUrl.split("+imag+")[0]);
                return Container(
                  child: CrearNoticia2(miNoti, true, publicacion[num].fotoUrl,
                      publicacion[num].id,widget.usuario,publicacion[num].id),
                  height: 300,
                  margin:
                      const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}

// ignore: camel_case_types
class CrearNoticia2 extends StatefulWidget {
  Noticia miNoticia = Noticia.i("", "", "");
  String id = "";
  bool tipo = false;
String idNoticia="";
  Usuario user=new Usuario(nombre: "", correo: "", rutaImagen: "");
  CrearNoticia2(this.miNoticia, bool t, fotos, String miId,Usuario user,String id , {Key? key})
      : super(key: key) {
    tipo = t;
    id = miId;
    this.idNoticia=id;
    this.user=user;
  }

  @override
  State<CrearNoticia2> createState() => _CrearNoticia2State();
}

class _CrearNoticia2State extends State<CrearNoticia2> {
  final publicacionProvider = PublicacionProvider();

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    if (widget.tipo) {
      return Container(
        margin: const EdgeInsets.all(13.0),
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.grey)),
        child: GestureDetector(
          onTap: () {
            Map<String, String> map = {
               'nombreUser':widget.user.nombre,
            'fotoUser':widget.user.rutaImagen,
             'id': widget.idNoticia,
              'titulo': widget.miNoticia.titulo,
              'descripcion': widget.miNoticia.descripcion,
              'imagenUrl': widget.miNoticia.imagenUrl
            };
            Navigator.pushNamed(context, '-', arguments: map);
          },
          child: Stack(
            children: [
              Image(
                image: Image.network(widget.miNoticia.getImagen()).image,
              ),
              Container(
                margin: const EdgeInsets.only(top: 150),
                color: Colors.white,
                height: 150,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 100, bottom: 60, left: 40, right: 40),
                  width: 300,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: Text(
                      widget.miNoticia.getTitulo(),
                      style: const TextStyle(fontSize: 19),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 230, bottom: 20, left: 40, right: 40),
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    widget.miNoticia.getDescripcion(),
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey.shade800, fontSize: 11),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 278,
                ),
                child: Row(children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                      child: const Icon(
                        Icons.update,
                        size: 40,
                        color: Colors.blue,
                      ),
                      width: 40,
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                     publicacionProvider.borrarPublicacion(widget.id);
                    
                     setState(() {
                  
                });
                     
                        
                      
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                      child: const Icon(
                        Icons.delete_outline,
                        size: 40,
                        color: Colors.blue,
                      ),
                      width: 40,
                      height: 40,
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      );
    }
    return Container();
  }
}
