import 'dart:async';

import 'package:flutter/material.dart';

import 'Sign_in_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Sign_In_Screen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/SAlogo.jpg', // Replace with your logo image asset
                width: 320,
                height:210,
              ),
            ),
            Text(
              'Scheduler\nApplication',
              style: TextStyle(
                fontSize: 37,
                color: Color(0xff545454),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
