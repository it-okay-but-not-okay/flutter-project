import 'package:flutter/material.dart';
// import 'package:hello_world/screen/Form_Screen.dart';
import 'package:hello_world/screen/test_design.dart';
// import 'package:hello_world/screen/list_view_screen.dart';

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
          child: Row(
            children: [
              Container(
                color: Colors.lightBlue,
                child: Image.asset('assets/images/pixel.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestDesign(),
                    ),
                    
                  );
                },
                child: Text("Click Me"),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
