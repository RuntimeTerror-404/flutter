// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: Colors.black,
       primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
       primaryIconTheme: IconThemeData(color: Colors.black),
       textTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
      home: new InstaHome(
       
      ),
    );
  }
}