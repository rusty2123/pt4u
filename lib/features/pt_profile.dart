import 'package:flutter/material.dart';

Padding buildPtProfile(String imageFilePath, String name, String title) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage(imageFilePath),
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 25.0,
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15.0,
                letterSpacing: 2),
          ),
        ],
      ),
    ),
  );
}