import 'package:flutter/material.dart';
import 'package:newsfeed_ui_2/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({Key key,@required this.icons,@required this.selectedIndex,@required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        border: Border(
          top:BorderSide(
          color: Palette.facebookBlue,
          width: 3.0,
        )
        )
        
      ),
      tabs:
        icons.asMap().map((i,e) =>MapEntry( i,
          Tab(icon: Icon(e,
          color: i == selectedIndex 
          ? Palette.facebookBlue: Colors.black45,
          size: 30.0
          ,
          ),)
          )
         ).values
         .toList(),
        onTap: onTap,
      
      
    );
  }
}