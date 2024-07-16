import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/1.6/provider/Provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: height * 0.101,
              width: width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: InkWell(
                  onTap: () {
                   HomeProvider().louncherWebsite();
                  },
                  child: Center(
                      child: Text(
                    'Website',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ))),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            Container(
              height: height * 0.101,
              width: width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: GestureDetector(onTap: () {
                HomeProvider().louncherGmail();
              },
                  child: Center(
                      child: Text(
                ' info@xyzzmail.com',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ))),
            ),
            SizedBox(
              height: height * 0.101,
            ),
            Container(
              height: height * 0.5,
              width: width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: ListTile(
                title: Center(
                    child: Text(
                  'Social Media',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue),
                 ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
