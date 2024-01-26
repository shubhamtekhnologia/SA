import 'package:flutter/material.dart';
import 'package:schedulerapplication/presentation/Screens/Home_Screen.dart';
import 'package:schedulerapplication/presentation/widget/Rounded_button.dart';



class Sign_In_Screen extends StatefulWidget {
  const Sign_In_Screen({super.key});

  @override
  State<Sign_In_Screen> createState() => _Sign_In_ScreenState();
}

class _Sign_In_ScreenState extends State<Sign_In_Screen> {

  bool passwordObsecured = true;
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  String errorMessage = '';
  bool performLogin() {
    // Replace this with your actual login validation logic
    // For demonstration purposes, using a static username and password
    String username = "shubham";
    String password = "shubham111";

    // Replace with your actual logic
    return (usernameController.text == username &&
        passwordController.text == password);
  }

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
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
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log In',
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
                            "Username",
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Color(0xff232323),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
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
                      const SizedBox(height: 18),
                      if (errorMessage.isNotEmpty)
                        Text(
                          errorMessage,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                      //         // forgot password?
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'verification');
                                },
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    // decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      //
                      const SizedBox(height: 10),
                      CustomMaterialButton(
                        onPressed: () {
                          setState(() {
                            // Clear any previous error message
                            errorMessage = '';
                          });
                          if (performLogin()) {
                            // Successful login
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home_Screen()),
                            );
                          } else {
                            setState(() {
                              errorMessage = 'Invalid credentials. Please try again.';
                            });
                          }
                        },
                        buttonText: 'Sign In',
                        buttonColor: Color(0xFF6791FF),
                        textColor: Colors.white,
                      ),




                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 20),
                      //   child: MaterialButton(
                      //     minWidth: double.infinity,
                      //     onPressed: () {
                      //       setState(() {
                      //         // Clear any previous error message
                      //         errorMessage = '';
                      //       });
                      //       if (performLogin()) {
                      //         // Successful login
                      //         Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => Home_Screen()),
                      //         );
                      //       } else {
                      //         setState(() {
                      //           errorMessage =
                      //           'Invalid credentials. Please try again.';
                      //         });
                      //       }
                      //     },
                      //     child: Text('Sign in'),
                      //     color: Color(0xFFAE66F5),
                      //     textColor: Colors.white,
                      //     height: 50,
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(25)),
                      //   ),
                      // ),
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
                            "Don't have an account?",
                            style: TextStyle(
                              // decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'signup');
                              },
                              child: Text(
                                'Sign Up',
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