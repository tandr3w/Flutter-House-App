import 'package:flutter/material.dart';
import 'package:nothousesigma/util/my_settings_page.dart';
import 'package:nothousesigma/util/my_map_page.dart';
import 'package:nothousesigma/responsive/responsivelayout.dart';

var myAppBarColor = Colors.grey[900];

var myAppBar = AppBar(
  backgroundColor: myAppBarColor,
  title: Text("Not HouseSigma"), // replace this with logo image

  actions: [
    Padding(
      padding: const EdgeInsets.all(4.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(4.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.map),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(4.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.settings),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(4.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.logout),
      ),
    ),
  ],
);

class MyAppBarExpanded extends StatelessWidget with PreferredSizeWidget {
  const MyAppBarExpanded({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: myAppBarColor,
      title: Text("Not HouseSigma"), // replace this with logo image

      actions: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.search),
          label: Text("Search"),
          style: ElevatedButton.styleFrom(primary: myAppBarColor, elevation: 0),
        ),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              // TODO: CONVERT TO ROUTES
              builder: (BuildContext context) {
                return ResponsiveLayout(
                  mobileScaffold: MyMapPageMobile(),
                  desktopScaffold: MyMapPageDesktop(),
                );
              },
            ));
            ;
          },
          icon: Icon(Icons.map),
          label: Text("Map"),
          style: ElevatedButton.styleFrom(primary: myAppBarColor, elevation: 0),
        ),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return MySettingsPage();
              },
            ));
          },
          icon: Icon(Icons.settings),
          label: Text("Settings"),
          style: ElevatedButton.styleFrom(primary: myAppBarColor, elevation: 0),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.logout),
          label: Text("Log Out"),
          style: ElevatedButton.styleFrom(primary: myAppBarColor, elevation: 0),
        ),
      ],
    );
  }
}
