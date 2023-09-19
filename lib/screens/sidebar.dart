import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'home.dart';
import 'login.dart';
import 'profile.dart';
import 'search.dart';
import 'about.dart';
import 'settings.dart';





class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => SideBarrState();
}

class SideBarrState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              accountName: Text("Legend"),
              accountEmail: Text("shedrackogwuche5@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/passport.jpg"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                 Get.to(
                    () => const Home(),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
    );
  }
}
