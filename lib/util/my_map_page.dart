import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'my_appbar.dart';
import 'my_drawer.dart';

class MyMapPageDesktop extends StatelessWidget {
  const MyMapPageDesktop({Key? key}) : super(key: key);

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

class MyMapPageMobile extends StatelessWidget {
  const MyMapPageMobile({Key? key}) : super(key: key);

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
