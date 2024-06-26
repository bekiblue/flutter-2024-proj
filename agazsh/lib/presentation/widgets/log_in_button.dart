import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  final Function()? ontap;
  const LogInButton({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green[500], borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(25),
        child: Center(
          child: Text(
            "Log In",
            style: TextStyle(
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
