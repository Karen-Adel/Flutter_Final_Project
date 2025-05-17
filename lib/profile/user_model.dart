
import 'dart:io';

import 'package:firstapp/profile/profile_widget/user.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserModel extends ChangeNotifier{  //to send notifications if anything is modified
  ImagePicker imagePicker = ImagePicker();

 // File ? selectedImage;

 User ? _user;

 User ? get user => _user;
 

  Future <void> imageSelector(ImageSource source) async {  //void as func in future

    XFile ? image = await imagePicker.pickImage(source: source); //select image from gallery
    if(image != null) {   
      if(_user !=null){  //lw fy user b3dl sorto
        _user?.image = File(image!.path); //not null
      }
      else{ //lw mfi4 b3ml user gedid be bayanato
        _user = User (name:"Nour", bio:"Code Sleep Eat Repeat",  image:File(image.path));
        
      }
      notifyListeners();
    }
  }

  void removeImage(){
    
                         
     _user ?.image = null; 
     notifyListeners();
                          
}

}