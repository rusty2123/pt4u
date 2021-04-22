import 'package:flutter/material.dart';
import 'package:pt4u/features/pt_profile.dart';

class PtSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Physical Therapists for you!"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildPtProfile("assets/images/sebastian.png", "Sebastian", "PT Student"),
            buildPtProfile("assets/images/greg.png", "Greg", "PT Student"),
            buildPtProfile("assets/images/roger.png", "Roger", "PT Student"),
          ],
        )
      ),
    );
  }
}
