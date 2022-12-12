import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

import '../../widgets/main_title.dart';
import 'number_card.dart';

class ReUseNumberCard extends StatelessWidget {
  const ReUseNumberCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
        MainTitle(titale: 'Top 10 Tv Show in india Today'),
        khight,
        LimitedBox(
          maxHeight: 170,
          // maxWidth: 25,
          child: ListView( 
    scrollDirection: Axis.horizontal,
    children: List.generate(10, (index) => Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10),
      child: NumberCArd(index:index+1 ),
    ))),
        )

      ]),
    );
  }
}

