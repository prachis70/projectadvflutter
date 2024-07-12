import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/1.1/view/theme.dart';
import 'package:projectadvflutter/Screen/1.4/view/changeTheme.dart';
import 'package:projectadvflutter/Screen/Provider/datamodel.dart';
import 'package:projectadvflutter/Screen/View/HomeScreen.dart';
import 'package:projectadvflutter/lec1.2/lec1.2.dart';
import 'package:provider/provider.dart';

import 'Screen/1.4/provider/provider.dart';

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
            ColorScheme.dark(primary: Colors.orange, secondary: Colors.blue),
      ),
      themeMode: Provider.of<Homeprovider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
         '/': (context) => Homepage(),
        // '/changeTheme': (context) => ChangeThemeProvider(),
        // '/steper1': (context) => steper(),
        // '/steper': (context) => steper2(),
        // '/theme': (context) => theme(),
      },
    ),
  ));
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main()
// {
//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: isDark?ThemeMode.dark:ThemeMode.light,
//       home: Scaffold(
//
//         body: Center(child: Column(children: [
//           SizedBox(height: height*0.150,),
//           Text('Yo Man!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
//           SizedBox(height: height*0.050,),
//           Text("It's a simple example of\n            dark theme",style: TextStyle(fontSize: 22,color: Colors.grey.shade600),),
//           SizedBox(height: height*0.1,),
//           GestureDetector(onDoubleTap: () {setState(() {isDark=false;});},
//             child: Container(
//               height: height*0.1, width: width*0.7,
//               decoration: BoxDecoration(color: Colors.yellowAccent, borderRadius: BorderRadius.circular(10)),
//               child: Center(child: Text("Light Icon",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),),),
//           SizedBox(height: height*0.050,),
//           GestureDetector(onDoubleTap: () {setState(() {isDark=true;});},
//             child: Container(height: height*0.1, width: width*0.7, decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
//               child: Center(child: Text("Dark Icon",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),)),
//             ),
//           )
//         ],
//         ),
//         ),
//       ),
//     );
//   }
// }
// bool isDark=false;
