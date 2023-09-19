import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../screens/home.dart';
import '../screens/about.dart';
import '../screens/search.dart';
import '../screens/profile.dart';
import '../screens/settings.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/home': (context) => const Home(),
      '/login': (context) => const Login(),
      '/search': (context) =>const Search(),
      '/profile': (context) =>const Profile(),
      '/about': (context) =>const About(),
      '/settings': (context) =>const Settings(),
    };
  }
}
