import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'my_appbar.dart';
import 'my_drawer.dart';

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1000) {
        return MySettingsPageMobile();
      } else {
        return MySettingsPageDesktop();
      }
    });
  }
}

class MySettingsPageDesktop extends StatelessWidget {
  const MySettingsPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarExpanded(),
      body: Row(children: [
        MyDrawer(),
        TextButton(
          child: Text('POP'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }
}

class MySettingsPageMobile extends StatelessWidget {
  const MySettingsPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: MyDrawer(),
      body: Center(
        child: TextButton(
          child: Text('POP'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
