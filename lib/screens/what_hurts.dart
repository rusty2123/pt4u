import 'package:flutter/material.dart';

class WhatHurtsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text(
                  "Head / Neck",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  minimumSize: Size(88, 50),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  minimumSize: Size(88, 50),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text(
                  "Elbow",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  minimumSize: Size(88, 50),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}