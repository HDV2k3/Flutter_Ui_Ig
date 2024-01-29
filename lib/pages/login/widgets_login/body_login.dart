import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/InstagramLogo.png',
          width: 182,
          height: 49,
        ),
        const SizedBox(height: 60),
        Image.asset(
          'assets/images/User.png',
          width: 85,
          height: 115,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
        foregroundColor:Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
                ),
          child: Container(
            width: 307,
            height: 44,
            child:const Text('log In'),
          ),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {
            // Xử lý sự kiện khi text button được nhấn
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
          ),
          child: const Text('Switch accounts'),
        ),
      ],
    );
  }
}