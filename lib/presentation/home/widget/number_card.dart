import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberCArd extends StatelessWidget {
  final int index;
  const NumberCArd({Key?key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Row(
        children: [SizedBox(width: 30),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.red, image:DecorationImage(fit: BoxFit.cover,
                image:  NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'))),
            // color: Colors.red,
            width: 130,
            height: 250,
          ),
        ],
      ),
      Positioned(left: 10,top: 80,
      // bottom: 1,
        child: BorderedText(
          strokeWidth: 7,strokeColor: Colors.white,
          child: Text(index.toString(), style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 80, decoration: TextDecoration.none,decorationColor: Colors.white),)))
      ]
    );
  }
}