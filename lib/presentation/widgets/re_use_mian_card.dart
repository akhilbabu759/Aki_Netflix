import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

import '../../core/constants.dart';
import 'main_card.dart';

class ReUseMainCard extends StatelessWidget {
  final String titale;
  const ReUseMainCard({
    Key? key,required this.titale
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
        MainTitle(titale: titale),
        khight,
        LimitedBox(
          maxHeight: 170,
          // maxWidth: 25,
          child: ListView( 
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10),
              child: mainCard(),
            ))),
        )

      ]),
    );
  }
}

