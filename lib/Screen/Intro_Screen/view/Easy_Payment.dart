import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:projectadvflutter/Screen/1.4/view/changeTheme.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Center(
        child: Column(
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/imgs/food2.jpeg'),),),),
            SizedBox(height: height*0.1,),
            Text('\n \n Fast Delivery', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
            ),
            Text(textAlign: TextAlign.center, '  Lorem ipsum dolor sit amet,consetetur\n sadipscing elitr,sed diam nonumy eirmod empor.', style: TextStyle(fontSize: 15, color: Colors.black45),
            ),
            SizedBox(height: height * 0.1),
            Column(children: [
              InkWell( onTap: () {
             Navigator.of(context).pushReplacement(
             MaterialPageRoute(
             builder: (context) => Homepage(),
             ),
             );
              },child: Container(height: height*0.052,width: width*0.4,color: Colors.blue,child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),)),
            ],),
           // SizedBox(height: height*0.151,
            //),
          ],
        ),
      ),
    );
  }
}
