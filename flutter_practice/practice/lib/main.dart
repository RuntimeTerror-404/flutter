// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';
// ignore: unused_import
// import 'dart:html';
// ignore: avoid_web_libraries_in_flutter
// import "dart:html";
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        shadowColor: Colors.blue,
        elevation: 10,
        title: Center(child: Text("Hi Flutter")),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Card(
              elevation: 10,
              shadowColor: Colors.red[300],
              child: Column(
                children: [
                  Image.asset(
                    "assets/stadium.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "enter something here!",
                          labelText: "Name",
                          border: OutlineInputBorder()),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //   child: Text(
            //     "This is Mohit",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.indigoAccent,
            //   ),
            // ),
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.network(
                    "https://images.unsplash.com/photo-1501432377862-3d0432b87a14?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1868&q=80"),
                accountName: Text("Mohit Parashar"),
                accountEmail: Text("mohit1672002@gmail.com")),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("mohit1672002@gmail.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
