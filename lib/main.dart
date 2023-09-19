import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'screens/about.dart';
import 'screens/home.dart';
import 'package:get/get.dart';
import 'screens/profile.dart';
import 'screens/search.dart';
import 'screens/settings.dart';
import 'screens/login.dart';
import 'screens/splash.dart';
import 'components/routes.dart';
import './screens/sidebar.dart';

void main() {
  Widget widget;
  String? token = "me"; //CacheHelper.getData(key: 'token');
  String? userID = "1";

  widget = const Home();
  if ((token != null && userID != null)) {
    widget = const Home();
  } else {
    widget = const Profile();
  }
  runApp(const MyApp());
FlutterNativeSplash.remove();
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

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const SideBar(),
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
        body:const Home(),
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          backgroundColor: Colors.black,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          onTap: onNavIconTap,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.to(
                    () => const Home(),
                  ); // Call your navigation function with the index
                },
                child: const Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.to(() =>
                      const Search()); // Call your navigation function with the index
                },
                child: const Icon(Icons.search),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.to(
                    () => const Profile(),
                  ); // Call your navigation function with the index
                },
                child: const Icon(Icons.person),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.to(() =>
                      const Profile()); // Call your navigation function with the index
                },
                child: const Icon(Icons.favorite),
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.to(() =>
                      const Home()); // Call your navigation function with the index
                },
                child: const Icon(Icons.settings),
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
      routes: Routes.getRoutes(),
    );
  }
}
