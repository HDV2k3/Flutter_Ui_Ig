import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer_Direct_Message extends StatelessWidget {
  const Footer_Direct_Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/icons/Icon_Camera.png'),

          TextButton(
            onPressed: () {

            },
            child: Text(
              'Camera',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}