import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:schedulerapplication/presentation/Screens/Sign_in_Screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  // int _selectedIndex=0;
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome',
        style: TextStyle(
            fontWeight: FontWeight.bold
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
                gradient: LinearGradient(
                  colors: [Color(0xFFDFE7FD), Color(0xFFDFE7FD)],
                ),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
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
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text('Abput Us'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
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
       body:_screens[_currentIndex],
    // PageView(
      //   children: _screens,
      //   onPageChanged: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   controller: PageController(
      //     initialPage: _currentIndex,
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 10,
      //   currentIndex: _selectedIndex,
      //   onTap: (index) {
      //
      //     // Handle item tap
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: _selectedIndex == 0 ? Color(0xff6791FF) : Colors.grey,
      //         ),
      //         child: Icon(Icons.home, color: Colors.white),
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: _selectedIndex == 1 ? Color(0xff6791FF) : Colors.grey,
      //         ),
      //         child: Icon(Icons.search, color: Colors.white),
      //       ),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: _selectedIndex == 2 ? Color(0xff6791FF) : Colors.grey,
      //         ),
      //         child: Icon(Icons.favorite, color: Colors.white),
      //       ),
      //       label: 'Favorites',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: _selectedIndex == 3 ? Color(0xff6791FF) : Colors.grey,
      //         ),
      //         child: Icon(Icons.shopping_cart, color: Colors.white),
      //       ),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: _selectedIndex == 4 ? Color(0xff6791FF) : Colors.grey,
      //         ),
      //         child: Icon(Icons.person, color: Colors.white),
      //       ),
      //       label: 'Profile',
      //     ),


      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Screen 1',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month,color: Colors.black,),
            label: 'Screen 2',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,),
            label: 'Screen 3',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_rounded,color: Colors.black,),
            label: 'Screen 4',
            backgroundColor: Color(0xffDFE7FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,),
            label: 'Screen 5',
            backgroundColor: Color(0xffDFE7FD),
          ),
        ],
        selectedItemColor: Colors.black, // Set the selected item color
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
    return Center(
      child: Text('Screen 1'),
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

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 3'),
    );
  }
}

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

