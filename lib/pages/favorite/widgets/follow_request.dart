import 'package:flutter/material.dart';

class FollowRequestsWidget extends StatelessWidget {
  const FollowRequestsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.topRight,
      child: Container(
        width: double.maxFinite,
        height: 48,
        decoration: BoxDecoration(
          color: const Color(0x00ffffff).withOpacity(0.01),
          border: Border.all(
            color: Colors.grey,
            width: 0.65,
          ),
        ),
        child:const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:  EdgeInsets.all(10),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Follow Requests',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 20 / 15,
                  letterSpacing: -0.25,
                  color: Color(0xFF262626), // Màu nền của văn bản
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}