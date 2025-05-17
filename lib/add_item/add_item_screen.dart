// import 'package:flutter/material.dart';
// import 'main.dart';

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});

//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   final TextEditingController titleController = TextEditingController();
//   final TextEditingController bodyController = TextEditingController();

//   @override
//   void dispose() {
//     titleController.dispose();
//     bodyController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         //title: const Text("Enter Details")
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage("assets/Untitled design.jpg"),
//           )
//         ),
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             SizedBox(height: 150,),
//             TextField(
//               controller: titleController,
//               minLines: 1,
//               maxLines: 2,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Enter Title",
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               controller: bodyController,
//               minLines: 3,
//               maxLines: 7,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Enter Body",
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         //tooltip: "Save",
//         child: const Icon(Icons.save),
//         onPressed: () {
//           String enteredTitle = titleController.text.trim();
//           String enteredBody = bodyController.text.trim();

//           if (enteredTitle.isNotEmpty) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => MyHomePage(
//                   title: enteredTitle,
//                   body: enteredBody.isNotEmpty ? enteredBody : "No description provided.",
//                 ),
//               ),
//             );
//           } else {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(content: Text("Title cannot be empty!")),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
















// import 'dart:io';

// import 'package:firstapp/home_screen/home_page.dart';
// import 'package:firstapp/main.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class FirstScreen extends StatefulWidget {
//   FirstScreen({super.key});

//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {

//    ImagePicker imagePicker = ImagePicker();

//   List<File> ? selectedImage =[];

//   Future <void> ImageSelector() async {  //void as func in future

//     List<XFile> ? images = await imagePicker.pickMultiImage(); //select image from gallery
//     if(images != null && mounted) {   //moounted: at2kd en el screen dih mawgoda m4 destroyed
//       setState(() {     //h5zn kima tanya law m4 be null

//          selectedImage !.addAll( images.map((toElement) => File(toElement!.path)).toList());  //b7awel kol element le file
//         // selectedImage =File(image!.path);
//       });
      
//         // selectedImage = File(image !.path);  //not null
//     }
//   }

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
//         child: ListView(children: [   //3a4an a2dr a3ml scroll
//           SizedBox(height: 30),
            


//            selectedImage!.isEmpty ? Container (
//               color: const Color.fromARGB(96, 0, 21, 255),
//               height: 120, 
//               width: MediaQuery.sizeOf(context).width-20,
//               child: IconButton(onPressed: (){
//                 ImageSelector();
//               }, icon: Icon(Icons.camera_alt)),)
//               :Row(
//                 children: [

//                     Container (
//                 color: Colors.white38,
//                 height: 100, 
//                 width: MediaQuery.sizeOf(context).width-120,
//                 child: IconButton(onPressed: (){
//                   ImageSelector();
//                 }, icon: Icon(Icons.camera_alt)),),

               


//                   SizedBox( height: 100,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: selectedImage!.map((toElement) => Stack(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal:8.0),
//                             child: Image.file(toElement, height: 100, width:100, fit: BoxFit.cover,),
//                           ),
                  
//                           IconButton(onPressed: (){
//                             setState(() {
//                               selectedImage!.removeAt(selectedImage!.indexOf(toElement));  //a2dr lama ados 3ala x al8y select 3ala sora
//                             });
//                           }, icon: Icon(Icons.cancel))
//                         ],
//                       )).toList(),),
//                   ),
//                 ],
//               ),



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
//         Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(
//           title: title.text,
//           body: body.text,
//           image: selectedImage,
//         )));
         
//        }),
//     );
//   }
// }





// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firstapp/home_screen/home_page.dart';

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   final ImagePicker imagePicker = ImagePicker();
//   List<Uint8List> imageBytesList = [];

//   TextEditingController title = TextEditingController();
//   TextEditingController body = TextEditingController();

//   Future<void> imageSelector() async {
//     final List<XFile>? images = await imagePicker.pickMultiImage();
//     if (images != null && mounted) {
//       final List<Uint8List> bytes = await Future.wait(images.map((image) => image.readAsBytes()));
//       setState(() {
//         imageBytesList.addAll(bytes);
//       });
//     }
//   }

//   @override
//   void dispose() {
//     title.dispose();
//     body.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text("Add Post"),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage("assets/ds.jpg"),
//           ),
//         ),
//         child: ListView(
//           padding: const EdgeInsets.all(12),
//           children: [
//             const SizedBox(height: 60),
//             imageBytesList.isEmpty
//                 ? Container(
//                     color: const Color.fromARGB(96, 0, 21, 255),
//                     height: 120,
//                     width: MediaQuery.sizeOf(context).width - 20,
//                     child: IconButton(
//                       onPressed: imageSelector,
//                       icon: const Icon(Icons.camera_alt, color: Colors.white),
//                     ),
//                   )
//                 : Row(
//                     children: [
//                       Container(
//                         color: Colors.white38,
//                         height: 100,
//                         width: MediaQuery.sizeOf(context).width - 120,
//                         child: IconButton(
//                           onPressed: imageSelector,
//                           icon: const Icon(Icons.camera_alt),
//                         ),
//                       ),
//                       SizedBox(
//   height: 100,
//   width: 100,
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: imageBytesList.asMap().entries.map((entry) {
//       int index = entry.key;
//       Uint8List bytes = entry.value;
//       return Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.memory(
//                 bytes,
//                 width: 100,
//                 height: 100,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 0,
//             child: IconButton(
//               icon: const Icon(Icons.cancel, color: Colors.red),
//               onPressed: () {
//                 setState(() {
//                   imageBytesList.removeAt(index);
//                 });
//               },
//             ),
//           ),
//         ],
//       );
//     }).toList(),
//   ),
// ),

//                     ],
//                   ),
//             const SizedBox(height: 20),
//             TextField(
//               controller: title,
//               minLines: 1,
//               maxLines: 2,
//               decoration: const InputDecoration(
//                 hintText: "Title",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               controller: body,
//               minLines: 3,
//               maxLines: 7,
//               decoration: const InputDecoration(
//                 hintText: "Body",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Handle data saving or navigation here
//           print("Title: ${title.text}");
//           print("Body: ${body.text}");
//           print("Images selected: ${imageBytesList.length}");
//         },
//         child: const Icon(Icons.save),
//       ),
//     );
//   }
// }




import 'dart:io';
import 'package:firstapp/add_item/item.dart';
import 'package:firstapp/add_item/item_model.dart';
import 'package:firstapp/dashboard/dashboard_screen.dart';
import 'package:firstapp/details_screen/details_page.dart';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<AddItemScreen> {
  

  TextEditingController title = TextEditingController();
  TextEditingController body = TextEditingController();

  @override
  void dispose() {
    title.dispose();
    body.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/white.png"),
          ),
        ),
        child: Consumer<ItemModel>(   //b5ly goz2 mn el screen yt8yr lw7do lama bgdd 7aga bdl ma a3mel set state we y8yr fy kol screen
          builder: (context, itemModel, child) => //we by5liny a3mel rebuild
           ListView(
            shrinkWrap: true,  // Ensures ListView takes only as much space as needed
            children: [
              SizedBox(height: 30),
              itemModel.selectedImage !.isEmpty  //if no image, open camera to select image
                  ? Container(
                      color: const Color.fromARGB(96, 0, 21, 255),
                      height: 120,
                      width: MediaQuery.sizeOf(context).width - 20,
                      child: IconButton(
                        onPressed: () {
                         itemModel. imageSelector();
                        },
                        icon: Icon(Icons.camera_alt),
                      ),
                    )
                  : Row(
                      children: [
                        Container(
                          color: Colors.white38,
                          height: 100,
                          width: MediaQuery.sizeOf(context).width - 220,
                          child: IconButton(
                            onPressed: () {
                             itemModel. imageSelector();
                            },
                            icon: Icon(Icons.camera_alt),
                          ),
                        ),
                        Expanded(  // Wrap the horizontal ListView with an Expanded widget
                          child: SizedBox(
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,  // Ensure it only takes the necessary space
                              children:itemModel. selectedImage!
                                  .map(
                                    (toElement) => Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Image.file(
                                            toElement,
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            itemModel.removeImage(itemModel.selectedImage!.indexOf(toElement));
                                           
                                          },
                                          icon: Icon(Icons.cancel),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: title,
                  minLines: 3,
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText: "title",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              TextField(
                controller: body,
                minLines: 3,
                maxLines: 7,
                decoration: InputDecoration(
                  hintText: "body",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {

          final item = Provider.of<ItemModel>(context, listen: false);  //hy7sl t8yrat laken mt8yrha4 enta 3ndk delwa2ty
          item.addItem(Item(images:
          List.from (item.selectedImage!), //bya5od byanat el item we ye push fy 7ta tanya
          title: title.text, body: body.text, favorite: false));
          item.selectedImage!.clear();

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DashboardScreen()));

        },
      ),
    );
  }
}
