import 'package:flutter/material.dart';
import 'package:gsg_ui/screens/instagram/instagram_screen.dart';
import 'package:gsg_ui/screens/drawer/my_first_ui.dart';
import 'package:gsg_ui/screens/facebook/feed_screen.dart';
import 'package:gsg_ui/screens/statefull/test_screen.dart';

import 'screens/facebook/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestScreen(),
    );
  }
}




