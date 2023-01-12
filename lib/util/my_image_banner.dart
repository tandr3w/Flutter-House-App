import 'package:flutter/material.dart';

class myImageBanner extends StatefulWidget {
  const myImageBanner({Key? key}) : super(key: key);

  @override
  State<myImageBanner> createState() => _myImageBannerState();
}

class _myImageBannerState extends State<myImageBanner> {
  @override
  var textController = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/img/blurredbg.jpg'),
          ),
        ),
        child: Container(alignment: Alignment.center));
  }
}
