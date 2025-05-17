// import 'package:firstapp/home_widget/favorite.dart';
// import 'package:firstapp/home_widget/season.dart';
import 'dart:io';

import 'package:firstapp/add_item/add_item_screen.dart';
import 'package:firstapp/add_item/item_model.dart';
import 'package:firstapp/profile/profile_page/profile_page.dart';
import 'package:firstapp/profile/user_model.dart';
import 'package:firstapp/widget_test.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../details_widget/home_widget.dart';

class DetailsPage extends StatelessWidget {
  // final String ? title;  //accepts null
  // final String ? body;
  // final List <File> ? image;

  const DetailsPage(
    // {this.image, this.title, this.body,super.key}
    );

  @override
  Widget build(BuildContext context) {
   final profileImage= Provider.of<UserModel>(context,).user?.image;
   final items = Provider.of<ItemModel>(context);
    return Scaffold(

      appBar: AppBar(
        actions: [IconButton(onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));  
        }, icon: profileImage==null? Icon(Icons.account_box): CircleAvatar(child: ClipOval(child: Image.file(profileImage,
         fit:BoxFit.cover,
         height: 50,width: 50,),),))],

        centerTitle: true,
        title: Text("The ${items.selectedItem!.title }"),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
            //  image==null || image!.isEmpty ? Image.asset(
            //     "assets/Untitled design.jpg",
            //     height: 300,
            //     // width: double.infinity,
            //     fit: BoxFit.cover,):
              Image.file(items.selectedItem!.images.first , height: 300, fit: BoxFit.cover, width: double.infinity,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FavoriteWidget(index: items.items.indexOf(items.selectedItem!)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.justify,
                  items.selectedItem!. body
                  //  ?? " A tree is tall"
                  // "trees are essential",
                ),
              ),
              // image == null || image!.isEmpty ? Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: const [
              //     MySeason(url: "assets/Untitled design.jpg", text: "Spring"),
              //     MySeason(url: "assets/Untitled design.jpg", text: "Fall"),
              //   ],
              //): 
              SizedBox(
                height: 500,
                child: GridView.builder(
                  itemCount: items.selectedItem! .images!.length,
                  itemBuilder: (context,index) => Image.file(items.selectedItem!.images[index], height: 200, width:200, fit: BoxFit.cover,),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10,)),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemScreen()));
        },
        child:  Icon(Icons.next_plan),
      ),
    );
  }
}



