import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/presentation/widgets/app_bar.dart';

import '../../core/constants.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(90
        
        ),child: AppBar(title: Text('New & hot',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),actions: [Icon(
            Icons.cast,
            color: Colors.blue,
            size:30 ,
          ),
          kwidth,
          Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),
          kwidth
    
          ],bottom: TabBar(isScrollable: true,labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold), unselectedLabelColor: Colors.white,labelColor: Colors.black,indicator: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
            tabs: [
            Tab(text: '🍿 Coming soon ',),
            Tab(text: "👀 Everyone's watching",)
          ]),)
        ),
        body: 
        TabBarView(children: [
          Text('one'),
          Text('two')
        ],)
        //  Center(child: Text('ScreenNewHot')),
      ),
    );
  }
}
