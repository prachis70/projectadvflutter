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
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp,color: Colors.black,size: 20,),
      ),
      body: Center(
        child: InkWell(onTap: () {
         Navigator.of(context).pushNamed('/fd');
        },
          child: Column(
            children: [
              Container(
                height: height * 0.3,
                width: width * 0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/imgs/logo.png'),),),),
              SizedBox(height: height*0.1,),
              Text('\n \n Fresh Food', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(textAlign: TextAlign.center, '  Lorem ipsum dolor sit amet,consetetur\n sadipscing elitr,sed diam nonumy eirmod empor.', style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
              SizedBox(height: height * 0.2,),
              Row(children: [
                  SizedBox(width: width * 0.41,),
                  Container(
                    height: height * 0.013,
                    width: width * 0.05,
                    decoration: BoxDecoration(color: Colors.orange, shape: BoxShape.circle,),),
                  Container(
                    height: height * 0.013,
                    width: width * 0.05,
                    decoration: BoxDecoration(color: Colors.black12, shape: BoxShape.circle,),),
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
bool isTrue=false;