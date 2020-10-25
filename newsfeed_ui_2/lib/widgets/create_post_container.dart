import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsfeed_ui_2/models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children:[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0), 
              Expanded(
                child:TextField(
                decoration: InputDecoration.collapsed(
                   hintText: 'what\s on your mind?'
                )
              )
              )             
            ],
          ), 
          const Divider(
            height:10.0,
            thickness:0.5
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              FlatButton.icon(onPressed: () => print("live"), 
              icon: const Icon(Icons.videocam, color: Colors.red,), 
              label: Text("Live")
              ),
              const VerticalDivider(
                width:8.0
              ),
                  FlatButton.icon(onPressed: () => print("phopto"), 
              icon: const Icon(Icons.photo_library, color: Colors.green,), 
              label: Text("Photo")
              ),
              const VerticalDivider(
                width:8.0
              ),
                  FlatButton.icon(onPressed: () => print("Room"), 
              icon: const Icon(Icons.video_call, color: Colors.purple,), 
              label: Text("Room")
              ),
              const VerticalDivider(
                width:8.0
              )
            ]
          )
        ]
      ),
    );
  }
}
