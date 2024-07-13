import 'package:flutter/material.dart';

class Homeprovider extends ChangeNotifier
{
  bool isDark=false;

  void changeTheme()
  {
    isDark=!isDark;
    notifyListeners();
  }
}
