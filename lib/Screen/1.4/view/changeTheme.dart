import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Homeprovider ThemeProviderTrue =
        Provider.of<Homeprovider>(context, listen: true);
    Homeprovider ThemeProviderFalse =
        Provider.of<Homeprovider>(context, listen: false);
    Homeprovider changeThemeFalse =
        Provider.of<Homeprovider>(context, listen: false);
    Homeprovider changeThemeTrue =
        Provider.of<Homeprovider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_rounded),
            color: Colors.grey,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 2, spreadRadius: 2)
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/user.jpeg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 15),
            Text(
              'Prachi Singh ',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 70),
            ListTile(
              leading: changeThemeTrue.isDark
                  ? Icon(
                      Icons.mode_night_sharp,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : Icon(
                      Icons.light_mode,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              title: Text(
                '${changeThemeTrue.isDark ? 'Dark' : 'Light'} Mode',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                onChanged: (value) {
                  changeThemeFalse.changeTheme();
                },
                value: changeThemeTrue.isDark,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.grid_on,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                'Story',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: changeThemeTrue.isDark ? Colors.pink : Colors.blue,
              ),
              title: Text(
                'Settings and Privacy',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.comment_outlined,
                color: changeThemeTrue.isDark
                    ? Colors.yellowAccent.shade100
                    : Colors.redAccent,
              ),
              title: Text(
                'Help Center',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Notification',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
