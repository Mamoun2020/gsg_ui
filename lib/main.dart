import 'package:flutter/material.dart';
import 'package:gsg_ui/screens/instagram/instagram_screen.dart';
import 'package:gsg_ui/screens/drawer/my_first_ui.dart';
import 'package:gsg_ui/screens/facebook/feed_screen.dart';
import 'package:gsg_ui/screens/statefull/test_screen.dart';

import 'screens/facebook/main_screen.dart';

void main() {
  runApp(MyApp());
}
final ValueNotifier<ThemeMode> myNotifier = ValueNotifier(ThemeMode.light);
// make call back function to theme mode

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: myNotifier,
      builder: (key,value,child){
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: value,
          debugShowCheckedModeBanner: false,
          // theme: isDark ? ThemeData.dark() : ThemeData.light(),
          home: TestScreen(changeTheme,isDark),
          // home: TestScreen(),
        );
      },

    );
  }
}




