import 'package:flutter/material.dart';

import '../screen_home.dart';
import 'custom_button.dart';

class BackgroundIMageWidget extends StatelessWidget {
  const BackgroundIMageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500, width: double.infinity,
          // color: Colors.amber,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg'))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(icon: Icons.add,text: 'My List'),
                TextButtonWidget(),
                CustomButton(icon:Icons.info ,text:'Info' ,)
              ],
            ),
          ),
        )
      ],
    );
  }
}