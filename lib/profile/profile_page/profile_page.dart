import 'dart:io';

import 'package:firstapp/profile/profile_page/options.dart';
import 'package:firstapp/profile/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';  

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: Column(children: [
        Center(child: Consumer <UserModel>(
          builder:(context, userModel, child) 
          {
          return Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(radius:100,
             child: userModel.user?.image == null ?   //ternary operator, if image is null

             Icon(Icons.person, size:200, color: Colors.white38 ) 
             : ClipOval(child: Image.file(
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              userModel.user!.image !)) //else h3rd selected image we make sure it is not null
             ),  
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black,
              child: IconButton(onPressed: () {
                showModalBottomSheet(context: context, builder: (context) => SizedBox( 
                  height: 150,  //add bottomsheet when camera is pressed
                child: Column(children: [Text("profile", style: TextStyle(fontSize: 25),),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Options( onPressed: (){
                    userModel. imageSelector(ImageSource.camera);
                  } ,  title: "camera", icon: Icons.camera),
                  Options(onPressed: (){
                   userModel. imageSelector(ImageSource.gallery);
                    Navigator.pop(context);
                  } ,title: "Gallery", icon: Icons.image),

                  if(userModel.user?.image != null)  //lw null yb2a m3ndi4 sora ttms7 fa m4 hst5dmha
                  Options( 
                    
                    selectedImage: userModel.user?.image,
                    onPressed: (){
                    userModel.removeImage();
                        Navigator.pop(context);
                  } ,title: "delete", icon: Icons.delete,),
                 ],)
                ],),
                ));  
              }, icon: Icon(
                color: Colors.grey,
                Icons.camera_alt , size: 25,))) , //add camera icon at the right bottom of the circle avatar
              
          ],
          );}
        )),
      //   , Row(children: [Icon(Icons.person, size: 75,) ,

      //   Column(children: [ Text("Name" ,   style: TextStyle(fontSize: 30),)  , Text("Nour" ,   style: TextStyle(fontSize: 30),)],)
        
       
  
         
       
       
       
       
      //  ],), 





     ListTile( 
       leading:  Icon(Icons.person),
      
      title: Text("Name "), 
     
     subtitle: Text("Nour  ") ,) , 



  ListTile( 
       leading:  Icon(Icons.person),
      
      title: Text("bio  "), 
     
     subtitle: Text("code eat sleep repeat  ") ,) ,
 







 SizedBox( 
  height: 200, 
  width: double.infinity,
   child: ListView( 
    scrollDirection: Axis.horizontal,
    
    
    
    children: [ Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person), Icon(Icons.person),],),
 )







    ]));
  }
}










// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   final ImagePicker _imagePicker = ImagePicker();
//   File? _selectedImage;

//   Future<void> _selectImage(ImageSource source) async {
//     try {
//       final XFile? image = await _imagePicker.pickImage(source: source);
//       if (image != null && mounted) {
//         setState(() {
//           _selectedImage = File(image.path);
//         });
//       }
//     } catch (e) {
//       debugPrint('Error picking image: $e');
//     }
//   }

//   void _showImagePickerOptions() {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) => SizedBox(
//         height: 180,
//         child: Column(
//           children: [
//             const Text("Choose Option", style: TextStyle(fontSize: 20)),
//             const Divider(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _buildOption("Camera", Icons.camera_alt, () {
//                   _selectImage(ImageSource.camera);
//                   Navigator.pop(context);
//                 }),
//                 _buildOption("Gallery", Icons.image, () {
//                   _selectImage(ImageSource.gallery);
//                   Navigator.pop(context);
//                 }),
//                 if (_selectedImage != null)
//                   _buildOption("Delete", Icons.delete, () {
//                     setState(() {
//                       _selectedImage = null;
//                     });
//                     Navigator.pop(context);
//                   }),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildOption(String title, IconData icon, VoidCallback onTap) {
//     return Column(
//       children: [
//         IconButton(
//           icon: Icon(icon, color: Colors.blueAccent),
//           onPressed: onTap,
//         ),
//         Text(title),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Profile")),
//       body: Center(
//         child: Stack(
//           alignment: Alignment.bottomRight,
//           children: [
//             CircleAvatar(
//               radius: 100,
//               backgroundImage: _selectedImage != null ? FileImage(_selectedImage!) : null,
//               child: _selectedImage == null
//                   ? const Icon(Icons.person, size: 100, color: Colors.white70)
//                   : null,
//             ),
//             Positioned(
//               bottom: 8,
//               right: 8,
//               child: CircleAvatar(
//                 backgroundColor: Colors.black54,
//                 radius: 25,
//                 child: IconButton(
//                   icon: const Icon(Icons.camera_alt, color: Colors.white),
//                   onPressed: _showImagePickerOptions,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
