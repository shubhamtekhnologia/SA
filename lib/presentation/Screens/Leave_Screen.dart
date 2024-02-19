import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/Horizonatal_card.dart';

class Leave_Screen extends StatefulWidget {
  const Leave_Screen({super.key});

  @override
  State<Leave_Screen> createState() => _Leave_ScreenState();
}

class _Leave_ScreenState extends State<Leave_Screen> {
  String selectedLeaveType = 'Casual Leave'; // Default selected leave type
  String selectedDayType = 'First Half';
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }// Default selected leave type


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
                            Horizonatal_Card(title: 'Total Leave', value: '12'),
                            SizedBox(width: 10),
                            Horizonatal_Card(title: 'Remaining ', value: '02'),
                            SizedBox(width: 10),
                            Horizonatal_Card(title: 'Applied', value: '10'),
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
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: IconButton(
                                      icon: Icon(Icons.calendar_today),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child:
                              DropdownButton<String>(
                                isExpanded: true,
                                value: selectedDayType,
                                items: [
                                  DropdownMenuItem(
                                    value: 'First Half',
                                    child: Text('First Half'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Second Half',
                                    child: Text('Second Half'),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    selectedDayType = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
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
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: IconButton(
                                      icon: Icon(Icons.calendar_today),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child:
                                DropdownButton<String>(
                                  isExpanded: true,
                                  value: selectedDayType,
                                  items: [
                                    DropdownMenuItem(
                                      value: 'First Half',
                                      child: Text('First Half'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Second Half',
                                      child: Text('Second Half'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedDayType = value!;
                                    });
                                  },
                                ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),

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
                        TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a note'
                        ),
                        ),
                        SizedBox(height: 10),

                        MaterialButton(onPressed: (){},
                        child: Text('Submit'),
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          
                        )


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
