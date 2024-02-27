import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAddStory extends StatelessWidget {
  const ProfileAddStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFC7C7CC),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(48),
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/add.svg',
              width: 18,
              height: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'New',
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
