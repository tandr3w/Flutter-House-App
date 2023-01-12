import 'package:flutter/material.dart';
import 'package:nothousesigma/responsive/responsivelayout.dart';
import 'package:nothousesigma/responsive/desktop_scaffold.dart';
import 'package:nothousesigma/responsive/mobile_scaffold.dart';
import 'package:window_size/window_size.dart';
import 'dart:io' show Platform;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(
        const Size(350, 600)); // Set to (1020, 600) to force desktop mode
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
          desktopScaffold: DesktopScaffold(),
          mobileScaffold: MobileScaffold(),
        ));
  }
}
