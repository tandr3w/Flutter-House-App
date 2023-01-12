import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey[350],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite), // logo can go here
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("DASHBOARD"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text("MAP"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("LOG OUT"),
              onTap: () {},
            ),
          ],
        ));
  }
}
