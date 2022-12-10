import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widget/search_title.dart';
 final image =
      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/33qGtN2GpGEb94pn25PDPeWQZLk.jpg';
class SearchIdlewidget extends StatelessWidget {
  const SearchIdlewidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(titale: 'Top Search'),
        khight,
        Expanded(
          child: ListView.separated(
             shrinkWrap: true,
              itemBuilder:  (context, index) => TopSearchItems(),
              separatorBuilder: (context, index) => khight20,
              itemCount: 10),
        )
      ],
    );
  }
}


class TopSearchItems extends StatelessWidget {
  const TopSearchItems({super.key});
 
  @override
  Widget build(BuildContext context) {
        final screenWidth=MediaQuery.of(context).size.width;
    return Row(
      
      children: [
        Container(
          width:screenWidth*0.35 ,
          height: 65,
          decoration: BoxDecoration(
            //  color: Colors.amber,
          image: DecorationImage(fit: BoxFit.cover,
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'))
        ),
          //  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'
          //  ))
        //  )
        ),
        Expanded(child: Text('Movie Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
        CircleAvatar(
          radius: 23,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 21,
            backgroundColor: Colors.black,
            child: Icon(CupertinoIcons.play_fill,color: Colors.white,),
          ),
        )
      ],
    );
  }
}
