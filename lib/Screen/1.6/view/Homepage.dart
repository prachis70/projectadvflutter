import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/1.6/provider/Provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactHomeProvider contactHomeProvider =
    Provider.of<ContactHomeProvider>(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
                size: 25,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Contact Us',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.010,
          ),
          Text(
            textAlign: TextAlign.center,
            'If you have any queries,get touch with\n us.We will be happy to help you!',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: height * 0.080,
            width: width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.blue)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  CupertinoIcons.device_phone_portrait,
                  color: Colors.blue,
                  size: 30,
                ),
                GestureDetector(
                    onTap: () {
                      contactHomeProvider.launcherPhone();
                    },
                    child: Text(
                      '+91 6673678906',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: height * 0.080,
            width: width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.blue)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Colors.blue,
                  size: 30,
                ),
                GestureDetector(
                    onTap: () {
                      contactHomeProvider.launcherEmail();
                    },
                    child: Text(
                      'prachi@gmail.com',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: height * 0.4,
            width: width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.blue)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.085,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  // border: Border.all(width: 0.08, color: Colors.grey)),
                  child: Center(
                    child: Text(
                      'Social Media',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    ),
                  ),
                ),
                Divider(thickness: 0.2,color: Colors.blue,),
                Container(
                  height: height * 0.085,
                  width: width * 0.7,
                  decoration: BoxDecoration(

                      // border: Border.all(width: 0.2, color: Colors.blue
                      // )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlutterLogo(size: 40,),
                      GestureDetector(
                          onTap: () {
                            contactHomeProvider.launcherWebsite();
                          },
                          child: Text('flutter dev',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
                Divider(thickness: 0.1,color: Colors.blue,indent: 30,endIndent: 20,),
                Container(
                  height: height * 0.070,
                  width: width * 0.7,
                  decoration: BoxDecoration(

                    // border: Border.all(width: 0.090, color: Colors.grey)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/imgs/git.png',
                        height: 40,
                      ),
                      GestureDetector(
                          onTap: () {
                            contactHomeProvider.launcherSocial();
                          },
                          child: Text('Github',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
                Divider(thickness: 0.1,color: Colors.blue,indent: 30,endIndent: 20),
                Container(
                  height: height * 0.1,
                  width: width * 0.8,
                  decoration: BoxDecoration(

                      // border: Border.all(width: 0.090, color: Colors.blue)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/imgs/link.webp',
                        height: 40,
                      ),
                      GestureDetector(
                          onTap: () {
                            contactHomeProvider.launcherSocial1();
                          },
                          child: Text('Linkedin',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
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
