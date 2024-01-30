import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedulerapplication/presentation/Screens/Sign_in_Screen.dart';

import '../../repository/signUpApi.dart';
import '../widget/Rounded_button.dart';

class Sign_Up_Screen extends StatefulWidget {
  const Sign_Up_Screen({super.key});

  @override
  State<Sign_Up_Screen> createState() => _Sign_Up_ScreenState();
}

class _Sign_Up_ScreenState extends State<Sign_Up_Screen> {
  bool passwordObsecured = true;
  final emailController = TextEditingController();
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
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
          Center(
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 145),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign Up',
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
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: TextField(
                            controller: emailController,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                                hintText: "Type Your Email Address",
                                prefixIcon: Icon(Icons.mail),
                                border: UnderlineInputBorder()
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 8.0, bottom: 8.0),
                            child: Text(
                              "Username",
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
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: TextField(
                            controller: usernameController,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                                hintText: "Type Your Username",
                                prefixIcon: Icon(Icons.person),
                                border: UnderlineInputBorder()
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 8.0, bottom: 8.0),
                            child: Text(
                              "Password",
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
                            style: TextStyle(),
                            obscureText: passwordObsecured,
                            decoration: InputDecoration(
                                hintText: "Type Your Password",
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
                                border: UnderlineInputBorder()),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // CustomMaterialButton(
                        //   onPressed: () {
                        //     setState(() {});
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => Sign_In_Screen()),
                        //     );
                        //   },
                        //   buttonText: 'Sign Up',
                        //   buttonColor: Color(0xFF6791FF),
                        //   textColor: Colors.white,
                        // ),
                        CustomMaterialButton(
                          onPressed: () async {
                            try {
                              final Map<String, dynamic> responseData = await ApiClient().signUp(
                                emailController.text,
                                usernameController.text,
                                passwordController.text,
                              );

                              // Handle the response data as needed (e.g., show a success message)
                              print('Registration successful: $responseData');

                              // Navigate to the login screen or perform other actions
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sign_In_Screen()),
                              );
                            } catch (error) {
                              // Handle registration error (e.g., show an error message)
                              print('Error during registration: $error');
                            }
                          },
                          buttonText: 'Sign Up',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                // decoration: TextDecoration.underline,
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child: Text(
                                  'Log In',

                                  style: TextStyle(
                                    // decoration: TextDecoration.underline,
                                      color: Color(0xFF0099E5),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ))
                          ],
                        ),
                      ],
                    ),
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
