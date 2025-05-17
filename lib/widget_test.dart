// import 'package:firstapp/details_screen/details_page.dart';
// import 'package:firstapp/main.dart';
// import 'package:flutter/material.dart';

// class FirstScreen extends StatefulWidget {
//   FirstScreen({super.key});

//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   TextEditingController title =TextEditingController();
//   TextEditingController body = TextEditingController();

//   @override
//   void dispose() {  //remove the data after forwarding it to the other page
//     // TODO: implement dispose
//     title.dispose();
//     body.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage("assets/ds.jpg"),),
//         ),
//         child: Column(children: [
//           SizedBox(height: 150),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: title,  //hyt7t fih el title
//               minLines: 3, 
//               maxLines: 7,
//               decoration: InputDecoration(
//                 hintText: "title",
//                 border: OutlineInputBorder()
//               ),
//             ),
//           ),
//         TextField(
//             controller: body,  //hyt7t fih el body
//             minLines: 3,
//             maxLines: 7,
//             decoration: InputDecoration(
//                 hintText: "title",
//                 border: OutlineInputBorder()
//               ),
//           ),
//         ],),
//       ),

//       floatingActionButton:
//        FloatingActionButton(child: Icon(Icons.save), onPressed:() {
//         Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(
//           title: title.text,
//           body: body.text,
//         )));
         
//        }),
//     );
//   }
// }