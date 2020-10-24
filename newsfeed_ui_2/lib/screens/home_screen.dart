import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:newsfeed_ui_2/config/palette.dart';
import 'package:newsfeed_ui_2/widgets/circle_button.dart';

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
          CircleButton(
            icon:Icons.search,
            iconSize:30,
            onPressed:() =>{}
            ),
             CircleButton(
            icon:MdiIcons.facebookMessenger,
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