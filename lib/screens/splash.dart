import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    const Duration duration = Duration(milliseconds: 800);
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Center(
        child: Image.asset('assets/myself.jpeg'), // Replace with your image asset path
      ),
    );
    
    ;
  }
}
