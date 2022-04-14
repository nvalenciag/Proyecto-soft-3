// ignore_for_file: unnecessary_const

import 'package:appclei/presentation/icon_login_icons.dart';
import 'package:flutter/material.dart';
import IconLogin from '../lib/presentation/icon_login_icons.dart';

class LoginPage extends StatelessWidget {
  final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      onPrimary: Colors.black,
      primary: Colors.white);
  final ButtonStyle style2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      onPrimary: Colors.white,
      primary: Color(0xFF3b5998));
  final ButtonStyle style3 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      onPrimary: Colors.white,
      primary: Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(70.0, 80.0, 70.0, 15.0),
        child: _login(),
      ),
    );
  }

  Widget _login() {
    return Column(
      children: [
        const FittedBox(
          alignment: Alignment.topCenter,
          fit: BoxFit.contain, // otherwise the logo will be tiny
          child: Center(
            child: Image(
              height: 200.0,
              width: 200.0,
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
                  child: ElevatedButton.icon(
                    icon:  const Icon( IconLogin.icons8_facebook__1_
                      ,
                      color: Colors.pink,
                      size: 24.0,
                    ),
                    label: const Text('Elevated Button'),
                    onPressed: () {
                      print('Pressed');
                    },style: style1,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: ElevatedButton(
                    style: style2,
                    onPressed: () {},
                    child: const Text('Iniciar con Facebook'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: ElevatedButton(
                    style: style3,
                    onPressed: () {},
                    child: const Text('Iniciar con Gmail +'),
                  ),
                ),
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
            )),
      ],
    );
  }
}
