import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedulerapplication/presentation/Screens/Password_Screen.dart';

import '../widget/Rounded_button.dart';

class Verification_screen extends StatefulWidget {
  const Verification_screen({super.key});

  @override
  State<Verification_screen> createState() => _Verification_screenState();
}

class _Verification_screenState extends State<Verification_screen> {
  bool passwordObsecured = true;
  final emailController = TextEditingController();
  final verificationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'assets/login.png',
              fit: BoxFit.cover,// Replace with your Group 1 image path
              // Adjust height as needed
            ),
          ),
          Center(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 170),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Verification',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF545454),
                          fontSize: 50,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            "Email Address",
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Color(0xff232323),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),

                      // username textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: emailController,
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                              hintText: "Type Your Email Address",
                              prefixIcon: Icon(Icons.mail),
                              border: UnderlineInputBorder()
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'verification');
                                },
                                child: Text(
                                  'Resend Again',
                                  style: TextStyle(
                                    // decoration: TextDecoration.underline,
                                    color: Color(0xff7D90FD),
                                    fontSize: 18,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0,bottom: 8.0),
                          child: Text(
                            "Verification Code",
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Color(0xff232323),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          obscuringCharacter: '*',
                          controller: verificationController,
                          style: TextStyle(),
                          obscureText: passwordObsecured,
                          decoration: InputDecoration(
                              hintText: "Type Your Verification Code",
                              prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordObsecured = !passwordObsecured;
                                  });
                                },
                                icon: Icon(
                                  passwordObsecured
                                      ? Icons.lock
                                      : Icons.lock_open,
                                ),
                              ),
                              border: UnderlineInputBorder()
                          ),
                        ),
                      ),
                      //
                      const SizedBox(height: 18),


                      // sign in button
                      CustomMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Password_Screen()),
                          );
                          setState(() {});

                        },
                        buttonText: 'Verify',
                        buttonColor: Color(0xFF6791FF),
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Or Log In with",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Colors.black26,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/gmaillogo.png'),
                            Image.asset('assets/facebooklogo.png'),
                            Image.asset('assets/googlelogo.png')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
