import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:newsfeed_ui_2/config/palette.dart';
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
        children: <Widget>[
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _postHeader(post: post),
          const SizedBox(height: 4.0,),
          Text(post.caption),
          post.imageUrl != null ? const SizedBox.shrink() : const SizedBox(height: 6.0,)

        ],
      ),
        ),
        post.imageUrl != null ? 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Image.network(post.imageUrl),
          // CachedNetworkImage(imageUrl: post.imageUrl),
          )
       
        : const SizedBox.shrink(),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: _postStats(post:post),
        )
        ],
      ) 
       
      
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
        Expanded(
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(post.user.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600
            ),
            ),
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
          ),
        IconButton(icon: const Icon(Icons.more_horiz),
         onPressed: () => print('More'),
         )
      ],
    );
  }
}

class _postStats extends StatelessWidget {
  final Post post;

  const _postStats({Key key,@required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: Palette.facebookBlue,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.thumb_up,
            size: 10.0,
            color: Colors.white,
          ),
        ),const SizedBox(width: 4.0,),
        Expanded(child: Text(
          '${post.likes}', style: TextStyle(
            color: Colors.grey[600],
          ),
        ),),
        
        Text(
          '${post.comments} Comments', style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(width:8.0),
        Text(
          '${post.shares} Shares', style: TextStyle(
            color: Colors.grey[600],
          ),
        )
      ],
    ),
    const Divider(),
    Row(
      children: <Widget>[
        _PostButton(
          icon: Icon(
            MdiIcons.thumbUpOutline,
            color: Colors.grey[600],
            size: 20.0,
          ),
          label : 'Like',
          onTap: () => print('Like'),
        ),   _PostButton(
          icon: Icon(
            MdiIcons.commentOutline,
            color: Colors.grey[600],
            size: 20.0,
          ),
          label : 'Comment',
          onTap: () => print('Comment'),
        ),
           _PostButton(
          icon: Icon(
            MdiIcons.shareOutline,
            color: Colors.grey[600],
            size: 20.0,
          ),
          label : 'Share',
          onTap: () => print('Share'),
        )
      ],
    )
      ],
    );
    
  }
}

class _PostButton  extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;

  const _PostButton({Key key, this.icon, this.label, this.onTap}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Material(
        color: Colors.white,
            child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon,
              const SizedBox(width: 4.0,),
              Text(label)
            ],
          ),
          )
        
        ),
      ),
    );
  }
}