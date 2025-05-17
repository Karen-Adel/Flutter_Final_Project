

import 'package:firstapp/add_item/item.dart';
import 'package:flutter/material.dart';

class FavoriteModel extends ChangeNotifier{
  final List<Item> _fav =[];
  List<Item> get fav => _fav;

  add(Item item){
    if(!_fav.contains(item)){  //law m4 bt7twy 3ala el item zawedo 3a4an myzwd4 nafs el item kaza mara
    _fav.add(item);
    }
    notifyListeners();
  }

  remove(Item item){
    if(_fav.contains(item)){ //law fy item mtzwd4 nfs el item tany
    _fav.remove(item);
    }
    notifyListeners();
  }

  isFavorite(Item item){ //law item fy fav 
    item.favorite = !item.favorite;
    item.favorite? add(item) : remove(item);
    notifyListeners();
  }
}