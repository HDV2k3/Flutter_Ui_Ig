import 'package:flutter/cupertino.dart';

import '../models/profile_story.dart';

class ProfileStoryItem extends StatelessWidget {
  const ProfileStoryItem({
    required this.profileStory,
    Key? key,
  }) : super(key: key);

  final ProfileStory profileStory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 63,
          height: 63,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFC7C7CC),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(48),
          ),
          child: Center(
            child: Image.asset(
              profileStory.image,
              width: 56,
              height: 56,
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          profileStory.title,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
