import 'package:flutter/material.dart';
import 'package:newsfeed_ui_2/config/palette.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: CustomScrollView(
        slivers:[
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'Title ',
            style: const TextStyle(
              color:Palette.nsbmgreen,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: <Widget>[
          CircleButtton (
              icon:Icons.search,
            iconSize:30,
            onPressed:() =>{}
            ) 
          ],
        ),
        SliverToBoxAdapter(
          child:Container(
            height:100.0,
            color:Colors.red,
          )
        )
        ]
      ),
    );
  }
}