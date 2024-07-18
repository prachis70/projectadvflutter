import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/%20Gallery%20With%20Biometric%20Authentication/Model/list.dart';

class GallaryScreen extends StatefulWidget {
  const GallaryScreen({super.key});

  @override
  State<GallaryScreen> createState() => _GallaryScreenState();
}

class _GallaryScreenState extends State<GallaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Recent'),
        leading: Icon(Icons.menu,),
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Wrap(
        children: [
          Row(
            children: [
              SizedBox(height: 50,),
              Text('Today',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 290,),
              Text('Select',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

            ],
          ),
          ...List.generate(
            gallarylists.length,
                (index) =>
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(fit:BoxFit.cover,image: AssetImage(gallarylists[index]['img']),),
                            ),
                          ),
                        ),
                      ],
                    ),
          ),
          Row(
            children: [
              SizedBox(height: 50,),
              Text('Today',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 290,),
              Text('Select',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

            ],
          ),
          ...List.generate(
            gallarylists.length,
                (index) =>
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(fit:BoxFit.cover,image: AssetImage(gallarylists[index]['img']),),
                        ),
                      ),
                    ),
                  ],
                ),
          ),
        ],
      ),
    );
  }
}
