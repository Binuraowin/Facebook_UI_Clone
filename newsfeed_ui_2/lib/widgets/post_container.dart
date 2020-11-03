import 'package:flutter/material.dart';
import 'package:newsfeed_ui_2/models/models.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key,@required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      height: 100.0,
      color: Colors.red,
    );
  }
}