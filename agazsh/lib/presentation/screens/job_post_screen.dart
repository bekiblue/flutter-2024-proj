import 'package:flutter/material.dart';
import 'package:agazsh/presentation/widgets/custom_button.dart';

class JobPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post a Job'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create a job listing.'),
            SizedBox(height: 20),
            CustomButton(
              text: 'Post Job',
              onPressed: () {
                // Implement job posting functionality
                // Example: Navigate back to home screen
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
