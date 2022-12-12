import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({Key?key,required this.titale});
final String titale;
  @override
  Widget build(BuildContext context) {
    return Text(
      titale,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}