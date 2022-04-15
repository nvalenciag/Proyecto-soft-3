// ignore_for_file: unnecessary_const, unnecessary_new
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return // Large
        Scaffold(
      backgroundColor: Color(0xFF212121),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(70.0, 100.0, 70.0, 15.0),
        child: _login(),
      ),
    );
  }

 //Todo el contenido del login
  Widget _login() {
    return Column(
      children: [
        _imagenFondo(),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: _boton('assets/google.png', 'Iniciar con Google',
                      _estiloBoton(Colors.black, Colors.white)),
                ),
                Container(
                  height: 15.0,
                ),
                SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: _boton('assets/facebook.png', 'Iniciar con Facebook',
                      _estiloBoton(Colors.white, Color(0xFF495b94))),
                ),
                Container(
                  height: 15.0,
                ),
                SizedBox(
                    width: double.infinity,
                    // height: double.infinity,
                    child: _boton('assets/linkedin.png', 'Iniciar con LinkedIn',
                        _estiloBoton(Colors.white, Color(0xFF057ab6)))),
              ],
            ),
          ),
        ),
        Container(
          height: 40.0,
        ),
        const FittedBox(
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: Text(
              'Conferencia latinoamericana de informatica',
              style: TextStyle(fontSize: 35, color: Color(0xFFadadad)),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
//Imagen logo de fondo
  Widget _imagenFondo() {
    return const FittedBox(
      alignment: Alignment.topCenter,
      fit: BoxFit.contain, // otherwise the logo will be tiny
      child: Center(
        child: Image(
          height: 320.0,
          width: 320.0,
          image: AssetImage('assets/IconoClei.png'),
        ),
      ),
    );
  }
//Metodo para crear botones se ingresa la ruta el nombre del boton y colores del boton
  Widget _boton(String rutaIcono, String textoBoton, ButtonStyle estiloBoton) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            height: 50.0,
            width: 50.0,
            image: AssetImage(rutaIcono),
          ),
          Expanded(
            child: Text(
              textoBoton,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      onPressed: () {
        print('Pressed');
      },
      style: estiloBoton,
    );
  } 

  //Metodo para indicar los colores de la letra y el fondo de un botonF
  ButtonStyle _estiloBoton(Color letra, Color fondo) {
    return ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(13.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        textStyle: TextStyle(fontSize: 20.0, fontFamily: 'Comfortaa'),
        onPrimary: letra,
        primary: fondo);
  }

}
