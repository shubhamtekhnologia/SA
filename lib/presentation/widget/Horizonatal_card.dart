import 'package:flutter/material.dart';

class Horizonatal_Card extends StatelessWidget {
  final String title;
  final String value;

  Horizonatal_Card({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(title),
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
