import 'package:flutter/material.dart';

class NoPtsFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('We couldn\'t find any PTs. :('),
      ),
    );
  }
}
