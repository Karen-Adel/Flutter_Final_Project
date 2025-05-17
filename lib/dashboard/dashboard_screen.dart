import 'package:firstapp/add_item/item.dart';
import 'package:firstapp/add_item/item_model.dart';
import 'package:firstapp/details_screen/details_page.dart';
import 'package:firstapp/add_item/add_item_screen.dart';
import 'package:firstapp/details_widget/favorite.dart';
import 'package:firstapp/favorite/favorite_model.dart';
import 'package:firstapp/profile/profile_page/profile_page.dart';
import 'package:firstapp/profile/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final profileImage = Provider.of<UserModel>(context).user?.image; //get profile page from UserModel
    final items = Provider.of<ItemModel>(context);
    final fav = Provider.of<FavoriteModel>(context);
     //get item details

    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),
       actions: [
        
        Stack( 
          children: [Icon(Icons.favorite , color: Colors.red,), Positioned(bottom:4 ,child: Text("${fav.fav.length}" , style: TextStyle( color: const Color.fromARGB(255, 10, 10, 10) , fontSize: 17 , fontWeight: FontWeight.bold),))],)
        
        
        ,IconButton(onPressed:() { 
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));  //add contact button
        }, icon: profileImage==null? Icon(Icons.account_box): CircleAvatar(child: ClipOval(child: Image.file(profileImage,
         fit:BoxFit.cover,
         height: 50,width: 50,),),))],
      ),

      body:items.items.isEmpty?Center(child: Text("Empty" ,style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),) : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        crossAxisSpacing: 10
        ),
        itemCount: items.items.length,
        itemBuilder: (context, index){
          return InkWell(
            
            onTap: (){ //lama ados 3ala img hygib el details bta3etha fy page tanya
              items.selectItem(Item(images: items.items[index].images,
               title: items.items[index].title,
                body:items.items[index].body,
                favorite: items.items[index].favorite));


              Navigator.push(context, MaterialPageRoute(builder: (builder)=>DetailsPage()));  //lw dost 3ala image hyro7 3ala page tanya
            },
            child: SizedBox(child: Column(children: [
              Image.file(items.items[index].images.first, height: 125,width:200, fit: BoxFit.cover,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(items.items[index].title),
                  FavoriteWidget(index: items.items.indexOf(items.items[index]),),
                  // IconButton.filledTonal(onPressed: (){
                  //   Provider.of<FavoriteModel>(context, listen: false).add(items.items[index]);
                  // }, icon: Icon(Icons.favorite)), //hyzhr lon 5afif wara el icon

                  
                ],
              )
            ],),),
          );
        }
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> AddItemScreen()));
        }, child: Icon(Icons.add),),
    );
  }
}