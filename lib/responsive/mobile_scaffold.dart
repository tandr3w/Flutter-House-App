import 'package:flutter/material.dart';
import 'package:nothousesigma/constants.dart';
import 'package:nothousesigma/util/my_tile.dart';
import 'package:nothousesigma/util/my_image_banner.dart';
import 'package:nothousesigma/util/my_appbar.dart';
import 'package:nothousesigma/util/my_drawer.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: MyDrawer(),
      body: Column(
        children: [
          Expanded(flex: 1, child: myImageBanner()),
          Expanded(flex: 2, child: Container(color: Colors.grey[250]))
        ],
      ),
    );
  }
}
