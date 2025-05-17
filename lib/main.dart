// import 'package:flutter/material.dart';
// import 'first_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       // theme: ThemeData(
//       //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//       // ),
//       home: FirstScreen(),  //awel 7aga htt3rd
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;
//   final String body;

//   const MyHomePage({ required this.title, required this.body,super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("The $title"),
//       ),
//       body: SingleChildScrollView(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/Untitled design.jpg",
//                 height: 300,
//                 // width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   FavoriteWidget(),
//                   IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   textAlign: TextAlign.justify,
//                   "trees are essential",
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   MySeason(url: "assets/Untitled design.jpg", text: "Spring"),
//                   MySeason(url: "assets/Untitled design.jpg", text: "Fall"),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child:  Icon(Icons.next_plan),
//       ),
//     );
//   }
// }

// class MySeason extends StatelessWidget {
//   final String url;
//   final String text;

//   const MySeason({super.key, required this.text, required this.url});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.bottomCenter,
//       children: [
//         Image.asset(
//           url,
//           height: 100,
//           width: 100,
//           fit: BoxFit.cover,
//         ),
//         Text(
//           text,
//           style: const TextStyle(color: Colors.white, fontSize: 25),
//         ),
//       ],
//     );
//   }
// }

// class FavoriteWidget extends StatefulWidget {
//   const FavoriteWidget({super.key});

//   @override
//   State<FavoriteWidget> createState() => _FavoriteWidgetState();
// }

// class _FavoriteWidgetState extends State<FavoriteWidget> {
//   bool click = false;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           click = !click;
//         });
//       },
//       icon: Icon(Icons.favorite, color: click ? Colors.red : Colors.grey),
//     );
//   }
// }




import 'package:firstapp/add_item/item_model.dart';
import 'package:firstapp/dashboard/dashboard_screen.dart';
import 'package:firstapp/dashboard/nav_bar.dart';
import 'package:firstapp/favorite/favorite_model.dart';
import 'package:firstapp/hhhh.dart';
import 'package:firstapp/profile/user_model.dart';
import 'package:flutter/material.dart';
import 'add_item/add_item_screen.dart';
import 'details_screen/details_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) =>   UserModel(),),
      ChangeNotifierProvider(create: (context)=> ItemModel(),),
      ChangeNotifierProvider(create: (context)=> FavoriteModel(),)
    ],child: const MyApp())
    
    );
   
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Github',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      // ),
      //home: MyHomePage(),
      home: MyWidget(), //awel 7aga htt3rd

    );
  }
}

// class MyHomePage extends StatelessWidget {
//   final String ? title;  //accepts null
//   final String ? body;

//   const MyHomePage({ this.title, this.body,super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("The ${title ?? "tree"}"),
//       ),
//       body: SingleChildScrollView(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/Untitled design.jpg",
//                 height: 300,
//                 // width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   FavoriteWidget(),
//                   IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   textAlign: TextAlign.justify,
//                   body ?? " A tree is tall"
//                   "trees are essential",
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   MySeason(url: "assets/Untitled design.jpg", text: "Spring"),
//                   MySeason(url: "assets/Untitled design.jpg", text: "Fall"),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child:  Icon(Icons.next_plan),
//       ),
//     );
//   }
// }

// class MySeason extends StatelessWidget {
//   final String url;
//   final String text;

//   const MySeason({super.key, required this.text, required this.url});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.bottomCenter,
//       children: [
//         Image.asset(
//           url,
//           height: 100,
//           width: 100,
//           fit: BoxFit.cover,
//         ),
//         Text(
//           text,
//           style: const TextStyle(color: Colors.white, fontSize: 25),
//         ),
//       ],
//     );
//   }
// }

// class FavoriteWidget extends StatefulWidget {
//   const FavoriteWidget({super.key});

//   @override
//   State<FavoriteWidget> createState() => _FavoriteWidgetState();
// }

// class _FavoriteWidgetState extends State<FavoriteWidget> {
//   bool click = false;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           click = !click;
//         });
//       },
//       icon: Icon(Icons.favorite, color: click ? Colors.red : Colors.grey),
//     );
//   }
// }
