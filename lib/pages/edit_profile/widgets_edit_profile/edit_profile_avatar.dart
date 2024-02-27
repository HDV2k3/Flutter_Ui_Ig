import 'package:flutter/material.dart';

import '../../profile/models/user.dart';

class EditProfileAvatar extends StatelessWidget {
  const EditProfileAvatar({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 18.5,
        ),
        Center(
          child: Image.asset(
            user.avatar,
            height: 96,
            width: 96,
          ),
        ),
        const SizedBox(
          height: 12.5,
        ),
        Center(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            child: const Text(
              'Change Profile Photo',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3897F0),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        const Divider(
          color: Color(0x4A3C3C43),
          height: 0.33,
        ),
      ],
    );
  }
}
