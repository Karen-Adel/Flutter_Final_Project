import 'package:firstapp/profile/profile_page/profile_page.dart';
import 'package:firstapp/profile/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final img = Provider.of<UserModel>(context).user!.image;

    return Scaffold(
      
      
      
      
      
      
      
      
      
      
      
      
      
      appBar: AppBar(title: Text("Nour"),),
      
      
      
      body:
       Column(children:[ Image.file(img)],),
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      );
  }
}