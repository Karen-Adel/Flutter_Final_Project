import 'dart:io';

import 'package:firstapp/add_item/item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ItemModel extends ChangeNotifier{
 final List<Item> _items =[]; //images user chose
  List<Item> get items => _items;

  void addItem(Item item){
    _items.add(item);
    notifyListeners();
  }

  ImagePicker imagePicker = ImagePicker();
  List<File>? selectedImage = [];

  Future<void> imageSelector() async {
    List<XFile>? images = await imagePicker.pickMultiImage(); //select image from gallery
    if (images != null ) {
      
        selectedImage!.addAll(images.map((toElement) => File(toElement!.path)).toList()); //b7wl mn xfile ela file 3a4an a2dr ast5dmha
      
    }
    notifyListeners();
  }

  void removeImage(index){
    selectedImage!.removeAt(index);     
    notifyListeners();                     
  }

    Item ? _selectedItem;
    Item ?get selectedItem=> _selectedItem;
    selectItem (Item item){  //save item that the user chose
      _selectedItem = item;
      notifyListeners();
    }

}