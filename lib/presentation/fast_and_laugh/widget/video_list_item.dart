import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key?key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.accents[index% Colors.accents.length] ,
      child: Row(
        children: [
          IconButton(onPressed:  () {
            
          }, icon:Icon( Icons.volume_mute))
        ],
      ),
    );
  }
}