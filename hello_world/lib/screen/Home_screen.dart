import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(child: (Text("Test Drawer"))),
        appBar: AppBar(
          title: Text("My first Project"),
        ),
        body: Center(
          child: Container(
            width: 500,
            height: 500,
            color: Colors.lightBlue,
            child: Image.asset('assets/images/pixel.png'),
            ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "phone",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize),
            label: "dashboard",
          ),
        ]),
      ),
    );
  }
}
