import 'package:flutter/material.dart';
import 'package:agazsh/presentation/widgets/job_card.dart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ListView(
          children: [
            JobCard(
              title: 'Electrician Needed',
              description: 'Install new wiring in apartment.',
              budget: 300,
              onPressed: () {
                // Navigate to job details screen
                Navigator.pushNamed(context, '/job_details');
              },
            ),
            JobCard(
              title: 'Plumber Needed',
              description: 'Fix leaking pipes in kitchen.',
              budget: 200,
              onPressed: () {
                // Navigate to job details screen
                Navigator.pushNamed(context, '/job_details');
              },
            ),
            // Add more job cards here
          ],
        ),
      ),
    );
  }
}
