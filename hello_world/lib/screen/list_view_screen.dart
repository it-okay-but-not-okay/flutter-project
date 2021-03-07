import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  ListViewScreen({Key key}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          drawer: Drawer(
            child: Text("Test Drawer"),
          ),
          appBar: AppBar(
            title: Text("List View Screen"),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("title 1"),
              ),ListTile(
                title: Text("title 2"),
              ),ListTile(
                title: Text("title 3"),
              ),ListTile(
                title: Text("title 4"),
              ),ListTile(
                title: Text("title 5"),
              ),
            ],
          )),
    );
  }
}
