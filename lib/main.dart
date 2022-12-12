import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

import 'presentation/main_page/widget/screen_main_page.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black.withOpacity(0.3)),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        scaffoldBackgroundColor: backgroundColors,
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white))),
      home: ScreenMAinPage(),
    );
  }
}
