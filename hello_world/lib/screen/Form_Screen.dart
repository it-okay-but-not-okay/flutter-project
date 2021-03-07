import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("Test Drawer"),
        ),
        appBar: AppBar(
          title: Text("Form Screen"),
        ),
        body: Center(
          child: Column(
            children: [TextFormField(
              decoration: InputDecoration(
                labelText: "ชื่อ-สกุล",
                
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
