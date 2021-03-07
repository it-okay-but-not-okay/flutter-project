import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  ExampleScreen({Key key}) : super(key: key);

  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Example"),
          ),
          body: Container(
            height: 250,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Testo"),
                      PopupMenuButton(
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              child: Text("Wifi"),
                            ),
                            PopupMenuItem(
                              child: Text("Bluetooth"),
                            )
                          ];
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      height:150,
                      width:150,
                      color: Colors.red.shade200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("One",style: TextStyle(
                            color:Colors.white,
                            
                          )),
                          Icon(Icons.pivot_table_chart,
                          color:Colors.white,
                          size:50,)
                        ],
                      )
                    ),
                    Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      height:150,
                      width:150,
                      color: Colors.blue.shade200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("One",style: TextStyle(
                            color:Colors.white,
                            
                          )),
                          Icon(Icons.pivot_table_chart,
                          color:Colors.white,
                          size:50,)
                        ],
                      )
                    ),],
                    
                    ),
                    ),
                    
                  ],)
                ),
              ],
            ),
          )),
    );
  }
}
