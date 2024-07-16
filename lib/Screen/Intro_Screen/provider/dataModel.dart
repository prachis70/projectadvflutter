import 'package:flutter/material.dart';

class Intopage extends ChangeNotifier {
//  late SharedPreferences sharedPreferences;
  bool isTrue = false;

  Future<void> setMethod(bool isTrue) async {
   // sharedPreferences = await SharedPreferences.getInstance();
   // sharedPreferences.setBool('home', isTrue);
    notifyListeners();
  }

  void changMethod() {
    isTrue = !isTrue;
    setMethod(isTrue);
    notifyListeners();
  }

  Future<void> getMethod() async {
    //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   // isTrue = sharedPreferences.getBool('home') ?? false;
    notifyListeners();
  }

  Intopage                                 (bool theme) {
    isTrue = theme;
    notifyListeners();
  }
}