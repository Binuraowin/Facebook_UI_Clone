import 'package:flutter/material.dart';
import 'package:newsfeed_ui_2/models/user_model.dart';
import 'package:newsfeed_ui_2/models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({
    Key key, 
    @required this.onlineUsers}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.orange,
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: 1+ onlineUsers.length,
         itemBuilder: (BuildContext context,int index){
           return Container(
             margin: const EdgeInsets.all(2.0),
             height: 20.0,
             width: 20.0,
             color: Colors.red,
           );
         }
         ),
    );
  }
}