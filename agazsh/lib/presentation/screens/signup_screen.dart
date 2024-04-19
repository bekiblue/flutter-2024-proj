import 'package:flutter/material.dart';
import 'package:agazsh/presentation/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _selectedRole = 'Client'; // Default role selection

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _registerUser() {
    // Implement user registration logic here based on selected role
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      // Show error message if email or password is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter email and password')),
      );
      return;
    }

    if (_selectedRole == 'Client') {
      // Register user as a client (implement client registration logic)
      print('Registering as a client with email: $email');
    } else {
      // Register user as a freelancer (implement freelancer registration logic)
      print('Registering as a freelancer with email: $email');
    }

    // Navigate to home screen after successful registration
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Text('Select Role:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'Client',
                  groupValue: _selectedRole,
                  onChanged: (value) {
                    setState(() {
                      _selectedRole = value.toString();
                    });
                  },
                ),
                Text('Client'),
                Radio(
                  value: 'Freelancer',
                  groupValue: _selectedRole,
                  onChanged: (value) {
                    setState(() {
                      _selectedRole = value.toString();
                    });
                  },
                ),
                Text('Freelancer'),
              ],
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Sign Up',
              onPressed: _registerUser,
            ),
          ],
        ),
      ),
    );
  }
}
