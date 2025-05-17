import 'package:firstapp/favorite/favorite_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fav = Provider.of<FavoriteModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("favorite"),
        actions: [Stack( 
          children: [Icon(Icons.favorite , color: Colors.red,), Positioned(bottom:4 ,child: Text("${fav.fav.length}" , style: TextStyle( color: const Color.fromARGB(255, 10, 10, 10) , fontSize: 17 , fontWeight: FontWeight.bold),))],)
        ],
      ),

      body: Consumer<FavoriteModel>(
        
        
        builder: (context, fav, child){
          if(fav.fav.isEmpty){
            return Center(child: Text("Empty",style: TextStyle(color: Colors.black , fontWeight:FontWeight.bold ),),);
          }else{

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          crossAxisSpacing: 10
          ),
          itemCount: fav.fav.length,
          itemBuilder: (context, index){
            return SizedBox(child: Column(children: [
              Image.file(fav.fav[index].images.first, height: 125,width:200, fit: BoxFit.cover,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(fav.fav[index].title),
                  IconButton.filledTonal(onPressed: (){
                    fav.fav[index].favorite = false;
                    fav.remove(fav.fav[index]); //law d5tt unfav ye remove mn fav page
                  }, icon: Icon(Icons.favorite, color: Colors.red)), //hyzhr lon 5afif wara el icon
                    
                  
                ],
              )
            ],),);
          }
          );}}
      ),
    );
  }
}