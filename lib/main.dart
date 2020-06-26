import 'package:flutter/material.dart';

import 'instagram_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
          accentIconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.black),
      home: InstagramHome(),
    );
  }
}
