import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/background_card.dart';
import 'package:netflix/presentation/home/widget/custom_button.dart';
import 'package:netflix/presentation/home/widget/number_card.dart';
import 'package:netflix/presentation/home/widget/re_use_number_card.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/re_use_mian_card.dart';

ValueNotifier<bool> scrolnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrolnotifier,
        builder: (BuildContext context, index, _) => SafeArea(
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrolnotifier.value = false;
                scrolnotifier.notifyListeners();
              } else if (direction == ScrollDirection.forward) {
                scrolnotifier.value = true;
                scrolnotifier.notifyListeners();
              }
              return true;
            },
            child: Stack(children: [
              ListView(children: [
                Column(
                  children: [
                    BackgroundIMageWidget(),
                    khight,
                    ReUseMainCard(titale: 'Released in the past year'),
                    khight,
                    ReUseMainCard(titale: 'Tranding Now'),
                    khight,
                    ReUseNumberCard(),
                    khight,
                    ReUseMainCard(titale: 'Tense Dramas'),
                    khight,
                    ReUseMainCard(titale: 'South india Cinemas'),
                    khight,
                  ],
                ),
              ]),
              scrolnotifier.value == true
                  ? AnimatedContainer(duration: Duration(milliseconds: 1000),
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                      height: 80,
                      child: Column(children: [
                        Row(
                          children: [
                            Image.network(
                              'https://images.crowdspring.com/blog/wp-content/uploads/2016/06/27132348/netflix-new-logo.png',
                              width: 60,
                              height: 40,
                            ),
                            Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
          size:30 ,
        ),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text('Tv Shows', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),Text('Movies', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        Text('Category', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))

                        ],)
                      ]),
                    )
                  : khight
            ]),
          ),
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        icon: Icon(Icons.play_arrow, size: 30, color: Colors.black),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Play',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ));
  }
}
