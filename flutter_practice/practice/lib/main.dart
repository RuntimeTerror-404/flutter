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
        backgroundColor: Colors.black26,
      ),
      body: Container(
        child: Center(child: Text("App developed by Mohit")),
      ),
    );
  }
}
