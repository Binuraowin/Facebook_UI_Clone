import 'package:flutter/material.dart';
import 'package:newsfeed_ui_2/data/data.dart';
import 'package:newsfeed_ui_2/models/models.dart';
import 'package:newsfeed_ui_2/widgets/profile_avatar.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key,@required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _postHeader(post: post)
        ],
      ),
    );
  }
}

class _postHeader  extends StatelessWidget {
  final Post post;

  const _postHeader({Key key,@required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ProfileAvatar(imageUrl: post.user.imageUrl),
        const SizedBox(width:8.0),
        Column(
          children: <Widget>[
            Text(post.user.name),
            Row(
              children: <Widget>[
                Text('${post.timeAgo} .',
                style:  TextStyle(color: Colors.grey[600],
                fontSize: 12.0
                ),
                ),
                Icon(Icons.public,
                color: Colors.grey[600],
                size: 12.0
                )
              ],
            )
          ],
        )
      ],
    );
  }
}