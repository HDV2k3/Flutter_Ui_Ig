import 'package:flutter/material.dart';

import '../models/profile_story.dart';
import 'profile_story_item.dart';

class ProfileStoryListView extends StatelessWidget {
  const ProfileStoryListView({
    required this.profileStories,
    Key? key,
  }) : super(key: key);

  final List<ProfileStory> profileStories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProfileStoryItem(
            profileStory: profileStories[index],
          );
        },
        itemCount: profileStories.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 18,
          );
        },
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      ),
    );
  }
}
