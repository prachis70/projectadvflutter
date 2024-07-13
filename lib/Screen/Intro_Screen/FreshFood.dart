import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class fresh_Food extends StatefulWidget {
  const fresh_Food({super.key});

  @override
  State<fresh_Food> createState() => _fresh_FoodState();
}

class _fresh_FoodState extends State<fresh_Food> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: height*0.9,
              width: width*0.9,
              decoration: BoxDecoration(
                  border:Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)
              ), child: Text('                                                          Skip ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            ),
            Container(

            ),
          ],
        ),
      ),
    );
  }
}
