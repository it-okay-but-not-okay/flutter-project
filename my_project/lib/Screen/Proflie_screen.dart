import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          body: Container(
            height:230,
            width:350,
            color: Colors.red.shade400,
            child:Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children:[
                
                CircleAvatar(
                radius:70,
                backgroundImage: NetworkImage('https://miro.medium.com/max/11400/1*lS9ZqdEGZrRiTcL1JUgt9w.jpeg'),
               
              ),
              Text("Beautiful Cat",style:TextStyle(
                color:Colors.white,
                
              ),
              ),
              Container(
                child:Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 
                 
                )
                
              )
              ]
            ),
      ),

      
      ),
      
    );
  }
}
