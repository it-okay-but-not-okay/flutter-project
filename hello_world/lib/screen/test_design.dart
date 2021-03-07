import 'package:flutter/material.dart';

class TestDesign extends StatefulWidget {
  TestDesign({Key key}) : super(key: key);

  @override
  _TestDesignState createState() => _TestDesignState();
}

class _TestDesignState extends State<TestDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
          title: Text("Test_Design"),
        ),
         body: Center(
           child:Column(
           children:[Container(
             
             width:310,
             child: DropdownButton(
               
     hint: Text("please check"),
     items: [
         DropdownMenuItem(
               onTap: () {},
               value: 1,
               child: Text("Button1"),
         ),
         DropdownMenuItem(
               onTap: () {},
               value: 1,
                child: Text("Button2"),
         )
     ],
     onChanged: (int value) {},
),
           ),
           ]
           ,)  
         )
       ),
    );
  }
}