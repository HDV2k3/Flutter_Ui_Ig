import 'package:flutter/material.dart';
import 'package:ig_ui/pages/home/widgets/story_item.dart';

import '../../../models/story.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({
    required this.stories,
    Key? key,
  }) : super(key: key);

  final List<Story> stories;

  @override
  Widget build(BuildContext context) {
      return SizedBox(
      height: 20,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return StoryItem(
            story: stories[index],
          );
        },
        itemCount: stories.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 16,
          );
        },
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      ),
    );
  }
}
