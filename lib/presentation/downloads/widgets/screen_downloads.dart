import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
   ScreenDownloads({super.key});
 final widgetLIst= [Row(
   children: [
     Icon(Icons.settings,color: Colors.white,),kwidth,Text('smart downloads')
   ],
 ),
          
          
        Section2(),Section3(),
       
       

      ];

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
            
          )),
      body:ListView.separated(padding: EdgeInsets.all(10),
        itemBuilder:(ctx, index) =>widgetLIst[index],  separatorBuilder:(ctx, index) =>SizedBox(height: 25,), itemCount: widgetLIst.length)
       );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList, this.angle=0,
    required this.margin,
    required this.size
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    // final Size size=MediaQuery.of(context).size;
    return Transform.rotate(angle:angle*pi/180 ,
      child: Container(
        margin: margin,
        // color: Colors.black,
        width: size.width,
      height: size.height,
      decoration: BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(10),image:DecorationImage(fit: BoxFit.cover,image: NetworkImage(imageList))),),
    );
  }

}
class Section2 extends StatelessWidget {
   Section2({super.key});
  List  imageLists=[
  'https://www.pride.com/media-library/image.jpg?id=31071674&width=980'
  ,'https://resizing.flixster.com/INaWJ7Ve2UDtTYN5nHVfJu7ixN4=/fit-in/180x240/v2/https://resizing.flixster.com/y3JV3SUueYgAZK4rs1WbN8EklwY=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZlMWI5MWE4LWEyNjUtNDNhMi1hODgyLTBkNWI3Yjk0NDcxNC53ZWJw',
  'https://images.immediate.co.uk/remote/m.media-amazon.com/images/M/MV5BY2E4MmNmMzgtOTI2YS00MzhjLTlmOWItZTkxNWRkYTY2NDcwXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg'
];

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Column(
      children: [
         Text('Introducing Downloads for you ',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: size.width*0.06,
        fontWeight: FontWeight.bold),),
        khight,
        Text(textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 16),
          'We  will download a personlised selection of\n movies and shows for you ,so there is \nalways something to watch on your \n device'),
        Container(
          width: size.width,
          height: size.height*0.56,
          color: Colors.black,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(backgroundColor: Colors.grey.withOpacity(0.7),
                  radius: size.width*0.367,
                ),
              ),
              DownloadsImageWidget(imageList:imageLists[0],margin: EdgeInsets.only(left: 130,bottom: 30),angle: 20,size: Size(size.width*0.4,size.width*0.50),)
              , DownloadsImageWidget(imageList:imageLists[1],margin: EdgeInsets.only(right: 130,bottom: 36),angle: -20,size: Size(size.width*0.4,size.width*0.50) ),
               DownloadsImageWidget(imageList:imageLists[2],margin: EdgeInsets.only(left: 0),angle: 0,size: Size(size.width*0.4,size.width*0.58) )
            ],
          ),

        )
      ],
    );
  }
}
class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ SizedBox(width: double.infinity,
      child: MaterialButton(
        color: kButtonColors,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {
            
          }, child: Text('Setup',style: TextStyle(color: Colors.white,fontSize:20 ,fontWeight: FontWeight.bold),),),
    )
        ,MaterialButton(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Colors.white,
          onPressed: () {
          
        }, child: Text('See what you can download',style: TextStyle(color: Colors.black,fontSize:20 ,fontWeight: FontWeight.bold),),)

    ],);
  }
}
