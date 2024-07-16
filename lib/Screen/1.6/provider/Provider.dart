import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HomeProvider extends ChangeNotifier
{
  void louncherWebsite()
  {
    Uri uri = Uri.parse("	https://flutter.dev");
   launchUrl(uri);
   notifyListeners();
  }
  void louncherGmail()
  {
    Uri uri = Uri.parse("mailto:prachi@gmail.com");
    launchUrl(uri);
    notifyListeners();
  }
}