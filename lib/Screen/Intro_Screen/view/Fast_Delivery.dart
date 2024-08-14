import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class fast_Div extends StatefulWidget {
  const fast_Div({super.key});

  @override
  State<fast_Div> createState() => _fast_DivState();
}

class _fast_DivState extends State<fast_Div> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Center(
        child: InkWell(onTap: () {

          Navigator.of(context).pushNamed('/fp');
        },
          child: Column(
            children: [
              Container(
                height: height * 0.3,
                width: width * 0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/imgs/food1.jpeg'),),),),
             // SizedBox(height: height*0.1,),
              Text('\n \n Fast Delivery', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
              ),
              Text(textAlign: TextAlign.center, '  Lorem ipsum dolor sit amet,consetetur\n sadipscing elitr,sed diam nonumy eirmod empor.', style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
              SizedBox(height: height * 0.2,),
              Row(children: [
                SizedBox(width: width * 0.41,),
                Container(
                  height: height * 0.013,
                  width: width * 0.05,
                  decoration: BoxDecoration(color: Colors.black12, shape: BoxShape.circle,),),
                Container(
                  height: height * 0.013,
                  width: width * 0.05,
                  decoration: BoxDecoration(color: Colors.orange, shape: BoxShape.circle,),),
                Container(
                  height: height * 0.013,
                  width: width * 0.05,
                  decoration: BoxDecoration(color: Colors.black12, shape: BoxShape.circle,),),
              ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
