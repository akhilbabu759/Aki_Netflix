import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key?key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.accents[index% Colors.accents.length] ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(onPressed:  () {
                
              }, icon:Icon( Icons.volume_off,size: 30,)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
                  ),
                ),
                 VideoActions(icon:Icons.emoji_emotions ,title: 'lol',),
                //  khight,
                 VideoActions(icon:Icons.add ,title: 'My List',),
                  // khight,
                 VideoActions(icon:Icons.share ,title: 'share',),
                  // khight,
                 VideoActions(icon:Icons.play_arrow ,title: 'PLay',)
              ],
            )
          ],
        ),
      ),
    );
  }
}
class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({Key?
  key,required this.icon,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,color:Colors.white ),
          Text(title,style: TextStyle(
            fontSize: 16
          ),)

        ],

      ),
    )
    ;
  }
}