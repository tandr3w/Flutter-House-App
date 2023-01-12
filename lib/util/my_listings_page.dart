import 'package:flutter/material.dart';
import 'package:nothousesigma/util/my_tile.dart';

// TODO: Add seperate scrolls for each listing gallery.
// TODO:

class MyListingsPage extends StatefulWidget {
  const MyListingsPage({Key? key}) : super(key: key);

  @override
  State<MyListingsPage> createState() => _MyListingsPageState();
}

class _MyListingsPageState extends State<MyListingsPage> {
  ScrollController myController = ScrollController();
  double pos = 0.0;
  double contextHeight = 0.0;

  void _scrollRight() {
    if (myController.position.pixels < myController.position.maxScrollExtent) {
      myController.animateTo(
        pos + contextHeight,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
      setState(() {
        pos += contextHeight;
      });
    }
  }

  void _scrollLeft() {
    if (pos > 0) {
      myController.animateTo(
        pos - (contextHeight),
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
      setState(() {
        pos -= contextHeight;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      contextHeight = MediaQuery.of(context).size.height / 2;
    });
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                height: contextHeight,
                width: double.infinity,
                child: ListView.builder(
                    controller: myController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: ((context, index) {
                      return AspectRatio(aspectRatio: 1, child: MyTile());
                    })),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                iconSize: 48,
                onPressed: _scrollRight,
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 48,
            onPressed: _scrollLeft,
          ),
        ],
      ),
    );
  }
}
