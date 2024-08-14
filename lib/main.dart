import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/1.4/view/changeTheme.dart';
import 'package:projectadvflutter/Screen/Intro_Screen/provider/dataModel.dart';
import 'package:projectadvflutter/Screen/Intro_Screen/view/Easy_Payment.dart';
import 'package:projectadvflutter/Screen/Intro_Screen/view/Fast_Delivery.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screen/Intro_Screen/view/FreshFood.dart';

bool theme1 = false;
bool isHomed = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool theme = sharedPreferences.getBool('theme') ?? false;
  isHomed = sharedPreferences.getBool('home') ?? false;
  theme1 = isHomed;
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(
        //   create: (context) => ThemeChange(theme),
        // ),
        ChangeNotifierProvider(
          create: (context) => OneTimeChangeProvider(isHomed),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => ContactPageProvider(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => GalleryProvider(),
        // ),
      ],
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.purple,
          onPrimary: Colors.green,
          secondary: Colors.blue,
          onSecondary: Colors.deepOrangeAccent,
          error: Colors.red,
          onError: Colors.redAccent,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.amber,
          onPrimary: Colors.blue,
          secondary: Colors.pink,
          onSecondary: Colors.yellowAccent,
          error: Colors.red,
          onError: Colors.redAccent,
          surface: Colors.black,
          onSurface: Colors.white,
        ),
      ),
     routes: {
        '/':(context)=>fresh_Food(),
        '/fd':(context)=>fast_Div(),
        '/fp':(context)=>Payment(),
       //'/py':(context)=>Homepage(),

     },
    );
  }
}
