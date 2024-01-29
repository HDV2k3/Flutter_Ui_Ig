import 'package:flutter/material.dart';

class FooterLogin2 extends StatelessWidget {
  const FooterLogin2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Instagram Or Facebook",style: TextStyle(color: Colors.grey[600]),),
        const SizedBox(width: 4),
      ],
    );
  }
}