import 'package:flutter/material.dart';
import 'package:agazsh/presentation/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome! Please login.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Login',
              onPressed: () {
                // Implement login functionality here
                // For example, navigate to home screen
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigate to sign up screen
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Create an Account'),
            ),
          ],
        ),
      ),
    );
  }
}
