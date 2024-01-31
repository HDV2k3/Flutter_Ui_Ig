import 'package:flutter/material.dart';

class AppBar_Profile extends StatelessWidget {
  const AppBar_Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 40,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 160),
                  child: Image.asset('assets/icons/okhoa.png'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Dev_Lo',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Image.asset('assets/icons/Shape_down.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 115),
                  child: Image.asset('assets/icons/bagachicon.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}