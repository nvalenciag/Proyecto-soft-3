
import 'package:appclei/Login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PerfilPage extends StatelessWidget {
LoginController controller;
   PerfilPage({required this.controller}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Center(
        child: buildProfileView(),
      ),
    );

   
  }

  Column buildProfileView() {
    return Column(mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundImage: Image.network(controller.googleAccount.value?.photoUrl ?? '').image,
            radius: 100,
          ),
          Text(controller.googleAccount.value?.displayName ?? '',
          style:  Get.textTheme.headline3,),
          Text(controller.googleAccount.value?.email ?? '',
          style:  Get.textTheme.bodyText1,),
          SizedBox(height: 16,),
          ActionChip(label: Text('Logout'),
          avatar:Icon(Icons.logout),
          onPressed:(){
            controller.logout();
            
          } ,)
        ],
        
      );
  }

}