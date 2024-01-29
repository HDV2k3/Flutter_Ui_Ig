import 'package:flutter/material.dart';

class TopBarLogin extends StatelessWidget {
  const TopBarLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Image.asset(
          'assets/icons/Back.png',
        ),
      ],
    );

  }
}