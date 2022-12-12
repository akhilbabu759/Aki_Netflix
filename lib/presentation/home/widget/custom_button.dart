import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,required this.icon,required this.text
  }) : super(key: key);
 final  IconData icon;
 final String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon,color: Colors.white,size: 30),
      Text(text,style: TextStyle(fontSize: 18,),)
    ]);
  }
}