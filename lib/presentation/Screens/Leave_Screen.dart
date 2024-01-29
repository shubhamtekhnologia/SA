import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Leave_Screen extends StatefulWidget {
  const Leave_Screen({super.key});

  @override
  State<Leave_Screen> createState() => _Leave_ScreenState();
}

class _Leave_ScreenState extends State<Leave_Screen> {
  String selectedLeaveType = 'Casual Leave'; // Default selected leave type


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'Leave Application',
                    style: TextStyle(
                      color: Color(0xFF232323),
                      fontSize: 20,
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xff000000),
                  thickness: 1,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Text('Total Leave'),
                                      Text('12'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Text('Remaining'),
                                      Text('02'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Text('Applied'),
                                      Text('10'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Leave Type',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        DropdownButton<String>(
                          hint: Text('Select Leave Type'),
                          isExpanded: true,
                          value: selectedLeaveType,
                          items: [
                            DropdownMenuItem(
                              value: 'Casual Leave',
                              child: Text('Casual Leave'),
                            ),
                            DropdownMenuItem(
                              value: 'Sick Leave',
                              child: Text('Sick Leave'),
                            ),
                            DropdownMenuItem(
                              value: 'Vacation',
                              child: Text('Vacation'),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedLeaveType = value!;
                            });
                          },
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Start Date',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Start Date',
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.calendar_today), onPressed: () {  },
          
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child:
                                TextField()
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'End Date',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'End Date',
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.calendar_today), onPressed: () {  },
          
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child:
                                TextField()
                            ),
                          ],
                        ),
          
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Note',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Expanded(
                            child:
                            TextField()
                        ),
          
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
