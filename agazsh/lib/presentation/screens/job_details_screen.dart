import 'package:flutter/material.dart';

class JobDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Job Title: Electrician Needed'),
            Text('Description: Install new wiring in apartment.'),
            Text('Budget: \$300'),
            SizedBox(height: 20),
            // Add more details and functionality here
          ],
        ),
      ),
    );
  }
}
