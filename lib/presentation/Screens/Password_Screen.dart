import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/Rounded_button.dart';

class Password_Screen extends StatefulWidget {
  const Password_Screen({super.key});

  @override
  State<Password_Screen> createState() => _Password_ScreenState();
}

class _Password_ScreenState extends State<Password_Screen> {
  bool passwordObsecured= true;
  final passwordController = TextEditingController();
  final confirmPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'assets/login.png', // Replace with your Group 1 image path
              // Adjust height as needed
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 170),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Password',
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
                              left: 20.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            "Create Password",
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
                          controller: passwordController,
                          style:  TextStyle(),
                          obscureText: passwordObsecured,
                          decoration: InputDecoration(
                              hintText: "Create Your Password",
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
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            "Confirm Password",
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
                          controller: confirmPasswordController,
                          style: TextStyle(),
                          obscureText: passwordObsecured,
                          decoration: InputDecoration(
                              hintText: "Type your Confirm Password",
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
                              border: UnderlineInputBorder(),

                          ),
                        ),
                      ),
                      //
                      const SizedBox(height: 18),


                      CustomMaterialButton(
                        onPressed: () {
                          if (passwordController.text == confirmPasswordController.text) {
                            showCongratulationsPopup();
                          } else {
                            showOopsPopup();
                            // Passwords don't match, handle accordingly
                          }
                        },
                        buttonText: 'Submit',
                        buttonColor: Color(0xFF6791FF),
                        textColor: Colors.white,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 20),
                      //   child: MaterialButton(
                      //     minWidth: double.infinity,
                      //     onPressed: () {
                      //       if (passwordController.text == confirmPasswordController.text) {
                      //         showCongratulationsPopup();
                      //       } else {
                      //         showOopsPopup();
                      //         // Passwords don't match, handle accordingly
                      //       }
                      //     },
                      //     child: Text('Submit'),
                      //     color: Color(0xFFAE66F5),
                      //     textColor: Colors.white,
                      //     height: 50,
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(25)),
                      //   ),
                      // ),
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
  void showCongratulationsPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pop();
          Navigator.pushReplacementNamed(context, 'login');
        });
        return AlertDialog(
          title: Text('Congratulations',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFFAE66F5),
            fontWeight: FontWeight.bold
          ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/congratulationImage.png', // Replace with your image path
                height: 200,
                width: 500,
              ),
              SizedBox(height: 10),
              Text("Your Password Has been \nchanged Successfully !",
              textAlign: TextAlign.center,),
            ],
          ),
        );
      },
    );
  }
  void showOopsPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pop();
          Navigator.pushReplacementNamed(context, 'password');
        });
        return AlertDialog(
          title: Text('Oops!',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFAE66F5),
              fontWeight: FontWeight.bold
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/oopsImage.png', // Replace with your image path
                height: 200,
                width: 500,
              ),
              SizedBox(height: 10),
              Text("Both Passwords Do Not Match \n  Try Again!",
                textAlign: TextAlign.center,),
            ],
          ),
          // actions: [
          //   TextButton(
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //     child: Text('OK'),
          //   ),
          // ],
        );
      },
    );
  }
}
