import 'package:flutter/cupertino.dart';
import '../models/story.dart';
import 'avatar_item.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    required this.story,
    Key? key,
  }) : super(key: key);

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AvatarItem(
            avatar: story.avatar,
            isLive: story.isLive,
          ),
        ),
        Text(
          story.name,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
