import 'package:flutter/material.dart';
import 'package:schedulerapplication/presentation/Screens/Home_Screen.dart';
import 'package:schedulerapplication/presentation/Screens/Password_Screen.dart';
import 'package:schedulerapplication/presentation/Screens/Sign_Up_Screen.dart';
import 'package:schedulerapplication/presentation/Screens/Sign_in_Screen.dart';
import 'package:schedulerapplication/presentation/Screens/Verification_Screen.dart';
import 'package:schedulerapplication/presentation/Screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'login':(context)=>Sign_In_Screen(),
        'signup':(context)=> Sign_Up_Screen(),
        'verification':(context)=> Verification_screen(),
        'password':(context)=> Password_Screen(),
        'home':(context)=> Home_Screen(),
      },
    );
  }
}
