import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

ValueNotifier<int> bottomNavIndex = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNavIndex,
      builder: (context, int index, _) {
        return BottomNavigationBar(
          onTap: (index) => bottomNavIndex.value = index,
          backgroundColor: backgroundColor,
          currentIndex: index,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.new_releases), label: "New & Hot"),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: "Fast Laughs"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads"),
          ],
        );
      },
    );
  }
}
