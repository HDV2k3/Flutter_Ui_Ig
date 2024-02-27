import 'package:flutter/material.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
              color: const Color(0xFF3C3C43).withOpacity(0.18),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
      onPressed: onPressed,
      child: const Text(
        'Edit Profile',
        style: TextStyle(
          color: Color(0xFF262626),
          fontSize: 13,
        ),
      ),
    );
  }
}
