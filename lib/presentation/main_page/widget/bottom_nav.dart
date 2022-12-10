import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
 ValueNotifier<int> indexChangeNotifier= ValueNotifier(0);
class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier,builder: (context, int indexValue, _) => 
       BottomNavigationBar(backgroundColor: Colors.black,
        currentIndex: indexValue,
        onTap: (value) {
         indexChangeNotifier.value=value;
        },
        type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      selectedIconTheme: IconThemeData(color: Colors.white),
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.collections), label: 'New & hot'),
        BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions), label:'Fast  Laughs'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Downloads')
      ]),
    );
  }
}
