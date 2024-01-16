import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavWidgets extends StatelessWidget {
  const BottomNavWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context,int  newIndex, child) {
        return BottomNavigationBar(
          elevation: 0,
            currentIndex: newIndex,
            onTap: (index){
              indexChangeNotifier.value=index;
            },
            selectedItemColor: Colors.white,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: "new & hot"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: "Fast laguh"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Downloads"),
            ]);
      },
    );
  }
}
