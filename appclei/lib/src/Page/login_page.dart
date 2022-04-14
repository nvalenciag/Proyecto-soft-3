// ignore_for_file: unnecessary_const

import 'package:appclei/presentation/icon_login_icons.dart';
import 'package:flutter/material.dart';
import 'package:appclei/responsive_framework.dart';

class LoginPage extends StatelessWidget {
  final ButtonStyle style1 = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      textStyle: const TextStyle(fontSize: 20),
      onPrimary: Colors.black,
      primary: Colors.white);
  final ButtonStyle style2 = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      textStyle: const TextStyle(fontSize: 20),
      onPrimary: Colors.white,
      primary: Color(0xFF3b5998));
  final ButtonStyle style3 = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      textStyle: const TextStyle(fontSize: 20),
      onPrimary: Colors.white,
      primary: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return  // Large
       Scaffold(
        backgroundColor: Color(0xFF212121),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(70.0, 80.0, 70.0, 15.0),
          child: _login(),
        ),
      )
    ;
  }

  Widget _login() {
    return Column(
      children: [
        const FittedBox(
          alignment: Alignment.topCenter,
          fit: BoxFit.contain, // otherwise the logo will be tiny
          child: Center(
            child: Image(
              height: 300.0,
              width: 300.0,
              image: AssetImage('assets/IconoClei.png'),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Image(
                          height: 30.0,
                          width: 30.0,
                          image: AssetImage('assets/Google.png'),
                        ),
                        Expanded(
                          child: Text(
                            'Iniciar con Google',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    style: style1,
                  ),
                ),
                Container(
                  height: 15.0,
                ),
                SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          IconLogin.icons8_facebook__1_,
                          size: 24.0,
                        ),
                        Expanded(
                          child: Text(
                            'Iniciar con Facebook',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    style: style2,
                  ),
                ),
                Container(
                  height: 15.0,
                ),
                SizedBox(
                    width: double.infinity,
                    // height: double.infinity,
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            IconLogin.icons8_linkedin,
                            size: 24.0,
                          ),
                          Expanded(
                            child: Text(
                              'Iniciar con LinkedIn',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                      style: style3,
                    )),
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
              style: TextStyle(fontSize: 14, color: Colors.white),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
