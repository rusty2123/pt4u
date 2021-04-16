import 'package:flutter/material.dart';

PopupMenuButton<String> buildPopupMenuButton() {
  return PopupMenuButton<String>(
    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      const PopupMenuItem<String>(
        child: Text('Settings'),
      ),
      const PopupMenuItem<String>(
        child: Text('Help'),
      ),
      const PopupMenuItem<String>(
        child: Text('Contact Us'),
      ),
    ],
  );
}