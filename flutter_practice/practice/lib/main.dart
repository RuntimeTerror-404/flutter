// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';
// ignore: unused_import
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hi Flutter")),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          // color: Colors.purple[200],
          width: 200,
          height: 150,
          child: Text(
            "This is a Box",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                textBaseline: TextBaseline.alphabetic),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
              // shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[600],
                    blurRadius: 10,
                    offset: Offset(2.0, 5.0))
              ],
              color: Colors.teal,
              gradient: LinearGradient(colors: [
                Colors.redAccent,
                // Colors.lightBlue[300],
                Colors.greenAccent,
                Colors.pink[400]
              ])),
        ),
      ),
    );
  }
}
