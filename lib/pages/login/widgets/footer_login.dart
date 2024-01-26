import 'package:flutter/material.dart';

class FooterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don’t have an account?"),
        SizedBox(width: 4),
        Text(
          "Sign up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}