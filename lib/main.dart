// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:projectadvflutter/Screen/1.1/view/theme.dart';
// import 'package:projectadvflutter/Screen/1.2/stepper2.dart';
// import 'package:projectadvflutter/Screen/1.4/view/changeTheme.dart';
// import 'package:projectadvflutter/Screen/Intro_Screen/provider/dataModel.dart';
// import 'package:projectadvflutter/Screen/Intro_Screen/view/Easy_Payment.dart';
// import 'package:projectadvflutter/Screen/Intro_Screen/view/Fast_Delivery.dart';
// import 'package:projectadvflutter/Screen/quotes_provider/Provider/datamodel.dart';
// import 'package:provider/provider.dart';
// import 'Screen/1.2/stepper.dart';
// import 'Screen/1.4/provider/provider.dart';
// import 'Screen/1.6/provider/auth_provider.dart';
// import 'Screen/Intro_Screen/view/FreshFood.dart';
//
// //bool theme= false;
// void main() {
//   return runApp(ChangeNotifierProvider(
//     create: (context) => HomeProvider(),
//     builder: (context, child) => MaterialApp(
//       theme: ThemeData(
//         brightness: Brightness.light,
//         colorScheme: ColorScheme.light(
//           primary: Colors.purple,
//           secondary: Colors.green,
//         ),
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         colorScheme:
//         ColorScheme.dark(primary: Colors.orange, secondary: Colors.blue,
//           // onSecondary: Color.
//         ),
//       ),
//       themeMode: Provider.of<Homeprovider>(context).isDark
//           ? ThemeMode.dark
//           : ThemeMode.light,
//       debugShowCheckedModeBanner: false,
//       routes: {
//         //  '/': (context) => Homepage(),
//         // '/changeTheme': (context) => ChangeThemeProvider(),
//         //  '/': (context) => steper(),
//         //  '/steper': (context) => steper2(),
//         // '/theme': (context) => theme(),
//         //  '/':(context)=>fresh_Food(),
//         //  '/fd':(context)=>fast_Div(),
//         // '/fp':(context)=>Payment(),
//       },
//     ),
//   ));
// }
// import 'package:flutter/material.dart';
// import 'package:projectadvflutter/Screen/1.6/view/Homepage.dart';
// import 'package:provider/provider.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import 'Screen/1.6/provider/auth_provider.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ContactHomeProvider(),
//       builder: (context, child) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Homepage(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/%20Gallery%20With%20Biometric%20Authentication/Provider/auth_provider.dart';
import 'package:projectadvflutter/Screen/%20Gallery%20With%20Biometric%20Authentication/view/SecondScreen.dart';
import 'package:provider/provider.dart';

import 'Screen/ Gallery With Biometric Authentication/view/HomePage.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthHomeProvider(),
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Gallary(),
          '/second':(context)=>GallaryScreen(),
        },
      ),
    );
  }
}

