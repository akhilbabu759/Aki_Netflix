import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  final String titale;
  const SearchTitle({
    Key? key,required this.titale
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titale,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}