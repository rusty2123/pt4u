import 'package:flutter/material.dart';
import 'package:pt4u/screens/no_pts_found.dart';

class IntakeScreen extends StatefulWidget {
  @override
  _IntakeScreenState createState() => _IntakeScreenState();
}

class _IntakeScreenState extends State<IntakeScreen> {

  String painTimeSpanValue = 'Less than a week';
  String hasPainHurtBefore = 'No';
  String painRating = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intake"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("How long has it been hurting?"),
            DropdownButton<String>(
              value: painTimeSpanValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  painTimeSpanValue = newValue;
                });
              },
              items: <String>['Less than a week', '1-2 weeks', '1 month', 'Over 1 month']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Text("Have you experienced this pain before?"),
            DropdownButton<String>(
              value: hasPainHurtBefore,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  hasPainHurtBefore = newValue;
                });
              },
              items: <String>['No', 'Yes']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Text("Rate your pain on a scale of 1-10"),
            DropdownButton<String>(
              value: painRating,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  painRating = newValue;
                });
              },
              items: <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton(
              child: Text(
                "Find PTs!",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NoPtsFoundScreen();
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
          ],
        ),
      ),
    );
  }
}
