import 'package:flutter/material.dart';
import 'package:nothousesigma/constants.dart';
import 'package:nothousesigma/util/my_textbreak.dart';
import 'package:nothousesigma/util/my_listings_page.dart';
import 'package:nothousesigma/util/my_scrollcontroller.dart';
import 'package:nothousesigma/util/my_image_banner.dart';
import 'package:nothousesigma/util/my_appbar.dart';
import 'package:nothousesigma/util/my_drawer.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DesktopScaffold> {
  @override
  ScrollController myController = ScrollController();

  double pos = 0.0;

  void _scrollDown() {
    // TODO: Turn into seprate class
    myController.animateTo(
      pos + 100,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
    setState(() {
      pos += 100;
    });
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: MyAppBarExpanded(),
        body: Row(
          children: [
            MyDrawer(),
            // TODO: Make page scrollable (Must get rid of Expanded widgets and replace with containers with height/length based on Mediaquery)
            Expanded(
              child: ListView(
                controller: AdjustableScrollController(40),
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height / 3,
                    child: myImageBanner(),
                  ),
                  SizedBox(height: 10),
                  TextBreak(text: "Featured Listings"),
                  MyListingsPage(),
                  TextBreak(text: "Category 2"),
                  MyListingsPage(),
                  TextBreak(text: "Category 3"),
                  MyListingsPage(),
                  TextBreak(text: "Category 4"),
                  MyListingsPage(),
                ],
              ),
            ),
          ],
        ));
  }
}
