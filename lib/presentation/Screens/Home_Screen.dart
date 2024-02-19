import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:schedulerapplication/presentation/Screens/Leave_Screen.dart';
import 'package:schedulerapplication/presentation/Screens/Profile_Screen.dart';
import 'package:schedulerapplication/presentation/Screens/Sign_in_Screen.dart';

import 'Leave_Screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _selectedIndex=0;
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Leave_Screen(),
    Screen4(),
    Profile_Screen(),
  ];
  final Color selectedColor = Colors.blue;
  final Color unselectedColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome',
        style: TextStyle(

        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon tap
            },
          ),
        ],

        // backgroundColor: Color(0xFFDFC0F0),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFDFE7FD), Color(0xFFDFE7FD)],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(

                // gradient: LinearGradient(
                //   colors: [Color(0xFFDFE7FD), Color(0xFFDFE7FD)],
                // ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(''),
                    // Replace 'assets/profile_image.jpg' with the path to your image
                  ),
                  SizedBox(height: 5),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.school_outlined),
              title: Text('Student Details'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.edit_note_outlined),
              title: Text('Edit Profile'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text('About Us'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Help'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Log out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sign_In_Screen()),
                );
                // Handle item 2 tap
              },
            ),
            // Add more list items as needed
          ],
        ),
      ),
       body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.black,),
            label: 'Home',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month,color: Colors.black,),
            label: 'Calender',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout,color: Colors.black,),
            label: 'Leave',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined,color: Colors.black,),
            label: 'Attendance',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity,color: Colors.black,),
            label: 'Profile',
            backgroundColor: Color(0xffDFE7FD),
          ),
        ],
        selectedItemColor: Colors.blueAccent, // Set the selected item color
        unselectedItemColor: Colors.grey, // Set the unselected item color
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center
       (
       child: Text(
         'Loading....'
       ),
     ),
       );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 2'),
    );
  }
}

// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Screen 3'),
//     );
//   }
// }

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 4'),
    );
  }
}

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 5'),
    );
  }
}


