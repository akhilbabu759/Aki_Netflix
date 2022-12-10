import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: CupertinoSearchTextField(
        prefixIcon : Icon(CupertinoIcons.search,color: Colors.grey,),suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),style: TextStyle(color: Colors.gray),
      ),
    ));
  }
}