import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String title;
  final String description;
  final double budget;
  final VoidCallback onPressed;

  const JobCard({
    required this.title,
    required this.description,
    required this.budget,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Text('\$$budget'),
        onTap: onPressed,
      ),
    );
  }
}
