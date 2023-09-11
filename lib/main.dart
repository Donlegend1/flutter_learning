import 'package:flutter/material.dart';
import 'screens/about.dart';

import 'screens/home.dart';

import 'screens/profile.dart';
import 'screens/search.dart';
import 'screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int currentindex = 0;

class _MyAppState extends State<MyApp> {
  void onNavIconTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List pages = [
    const Home(),
    const Search(),
    const Profile(),
    const About(),
    const Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        appBar: AppBar(
          actionsIconTheme: const IconThemeData(color: Colors.red),
          backgroundColor: Colors.black,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Good Afternoon, Legend",
                  style: TextStyle(fontSize: 15)),
              const Spacer(),
              const Icon(Icons.diamond),
              const Text(
                ' Diamond',
                style: TextStyle(fontSize: 15),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
          
        ),
        body: pages[currentindex],
        bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
