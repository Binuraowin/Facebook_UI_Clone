import 'package:flutter/material.dart';
import 'package:newsfeed_ui_2/config/palette.dart';
import 'package:newsfeed_ui_2/models/user_model.dart';
import 'package:newsfeed_ui_2/models/models.dart';
import 'package:newsfeed_ui_2/widgets/profile_avatar.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({
    Key key, 
    @required this.onlineUsers}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: 1+ onlineUsers.length,
         itemBuilder: (BuildContext context,int index){
           if(index==0){
             return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
             child: _CreateRoomButton(),
             );
           }
final User user = onlineUsers[index-1];
           return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
           child: ProfileAvatar(
             imageUrl: user.imageUrl,
             
            //  imageUrl: user.imageUrl,
           isActive: true,
           ),
           );

          //  Container(
          //    margin: const EdgeInsets.all(2.0),
          //    height: 20.0,
          //    width: 20.0,
          //    color: Colors.red,
          //  );
         }
         ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Create Room'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 3.0,
        color: Colors.blueAccent[100]
      ),
       textColor: Palette.nsbmgreen,
       child: Row(
         children: <Widget>[
           ShaderMask(
             shaderCallback: (rect) =>Palette.createRoomGradient.createShader(rect),
             child: Icon(Icons.video_call,
           size:35.0,
           color: Colors.white,
           ),
             ),
            const SizedBox(width: 4.0,),
            Text('Create \n Room')
         ],
       ),
      );
    
  }
}