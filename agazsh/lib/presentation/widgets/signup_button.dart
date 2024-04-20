import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback? onTap;

  const SignUpButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green, // Use desired background color
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(25),
        child: Center(
          child: Text(
            "Sign Up", // Button text
            style: TextStyle(
              color: Colors.white, // Text color
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
