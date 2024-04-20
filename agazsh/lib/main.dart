import 'package:agazsh/presentation/screens/job_post_screen.dart';
import 'package:flutter/material.dart';
import 'package:agazsh/presentation/screens/login_screen.dart';
import 'package:agazsh/presentation/screens/signup_screen.dart';
import 'package:agazsh/presentation/screens/home_screen.dart';
import 'package:agazsh/presentation/screens/job_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agazsh',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login', // Set initial route
      routes: {
        '/login': (context) => LoginScreen(), // Define named routes
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/job_details': (context) => JobDetailsScreen(),
        '/job_post': (context) => JobPostScreen(),
      },
    );
  }
}
