import 'package:flutter/material.dart';
// import 'package:hello_world/screen/Home_screen.dart';
import 'package:hello_world/screen/example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleScreen(),
    );
  }
}

