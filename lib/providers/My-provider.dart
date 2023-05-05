import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{

  String languageCode ="ar";
  void changeLanguage(String lang){
    languageCode=lang;

  notifyListeners();

  }
}