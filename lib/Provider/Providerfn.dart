import 'package:flutter/cupertino.dart';

class Providerfn extends ChangeNotifier{
  List<String> fav=[];
  List<String> get textfn=>fav;

  void toggleFavorate(String word){
    final isExist=fav.contains(word);
    if(isExist){
      fav.remove(word);
    }else{
      fav.add(word);
    }
    notifyListeners();
  }
  bool symbol(String symbols){
    final isExist=fav.contains(symbols);
    return isExist;


  }


}