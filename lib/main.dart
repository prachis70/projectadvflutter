import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/1.1/view/theme.dart';
import 'package:projectadvflutter/Screen/1.2/stepper2.dart';
import 'package:projectadvflutter/Screen/1.4/view/changeTheme.dart';
import 'package:projectadvflutter/Screen/Intro_Screen/Easy_Payment.dart';
import 'package:provider/provider.dart';
import 'Screen/1.2/stepper.dart';
import 'Screen/1.4/provider/provider.dart';
import 'Screen/Intro_Screen/FreshFood.dart';

void main() {
  return runApp(ChangeNotifierProvider(
    create: (context) => Homeprovider(),
    builder: (context, child) => MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: Colors.purple,
          secondary: Colors.green,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme:
            ColorScheme.dark(primary: Colors.orange, secondary: Colors.blue,
           // onSecondary: Color.
            ),
      ),
      themeMode: Provider.of<Homeprovider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
      //  '/': (context) => Homepage(),
        // '/changeTheme': (context) => ChangeThemeProvider(),
        //  '/': (context) => steper(),
        //  '/steper': (context) => steper2(),
        // '/theme': (context) => theme(),
        '/':(context)=>fresh_Food(),
      },
    ),
  ));
}
