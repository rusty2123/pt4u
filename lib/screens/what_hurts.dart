import 'package:flutter/material.dart';
import 'package:pt4u/screens/intake.dart';

class WhatHurtsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What hurts?"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            whatHurtsItem(context, "Neck"),
            whatHurtsItem(context, "Elbow"),
            whatHurtsItem(context, "Back"),
            whatHurtsItem(context, "Penis"),
          ],
        ),
      ),
    );
  }

  Padding whatHurtsItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return IntakeScreen();
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrangeAccent,
          minimumSize: Size(88, 50),
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
