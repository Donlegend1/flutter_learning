import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

int currentindex = 0;

class _BottomState extends State<Bottom> {
  void onNavIconTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        backgroundColor: Colors.black,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: onNavIconTap,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors
            .red, // Set the unselected item color to grey (or any color you prefer)
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
            label: 'Home', // Add a label for the first item
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search', // Add a label for the second item
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile', // Add a label for the third item
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites', // Add a label for the fourth item
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings', // Add a label for the fifth item
          ),
        ],
      ),
    );
  }
}
