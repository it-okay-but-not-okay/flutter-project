import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      drawer: Drawer(child: (Text("Test Drawer"))),
      appBar: AppBar(
        title: Text("My first Project"),
      ),
      body: Center(
        child: Text("hi bro"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "phone"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize),
            label: "dashboard"
          ),
        ],
      ),
    ),
  ));
}
