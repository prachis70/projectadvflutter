import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectadvflutter/Screen/%20Gallery%20With%20Biometric%20Authentication/Model/list.dart';
import 'package:projectadvflutter/Screen/%20Gallery%20With%20Biometric%20Authentication/view/SecondScreen.dart';
import 'package:projectadvflutter/Screen/1.6/view/Homepage.dart';
import 'package:provider/provider.dart';

import '../../1.4/provider/provider.dart';
import '../Provider/auth_provider.dart';

class Gallary extends StatefulWidget {
  const Gallary({super.key});

  @override
  State<Gallary> createState() => _GallaryState();
}

class _GallaryState extends State<Gallary> {
  @override
  Widget build(BuildContext context) {
    AuthHomeProvider authHomeProvider =
        Provider.of<AuthHomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Gallary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.menu,
        ),
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Wrap(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Albums'),
              ),
              SizedBox(
                width: 102,
              ),
              Icon(Icons.search),
              PopupMenuButton<String>(
                onSelected: (String value) async {
                  if (value == 'Hide Folder') {
                    if (await Provider.of<AuthHomeProvider>(context,
                            listen: false)
                        .checkFingerprint()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GallaryScreen(),
                        ),
                      );
                    }
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Edit',
                    child: Text('Edit'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Setting',
                    child: Text('Setting'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Hide Folder',
                    child: Text('Hide Folder'),
                  ),
                ],
                child: const Icon(Icons.more_vert),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          ...List.generate(
            gallarylist.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(gallarylist[index]['img']),
                      ),
                    ),
                  ),
                  Text(
                    gallarylist[index]['txt'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    gallarylist[index]['count'].toString(),
                    style: TextStyle(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
