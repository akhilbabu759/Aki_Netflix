import 'package:flutter/material.dart';

class mainCard extends StatelessWidget {
  const mainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.red, image:DecorationImage(fit: BoxFit.cover,
          image:  NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'))),
      // color: Colors.red,
      width: 170,
      height: 250,
    );
  }
}