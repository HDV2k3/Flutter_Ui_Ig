import 'package:flutter/material.dart';

import '../home/models/post.dart';
import '../home/models/story.dart';
import '../home/widgets/home_app_bar.dart';
import '../home/widgets/post_item.dart';
import '../home/widgets/story_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Story> stories = [
    const Story(name: 'Your Story', avatar: 'assets/images/avatar.png'),
    const Story(
      name: 'karennne',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
    const Story(name: 'karennne', avatar: 'assets/images/avatar1.png'),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
  ];

  List<Post> posts = [
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: [
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: ['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: ['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: ['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 98,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryItem(
                  story: stories[index],
                );
              },
              itemCount: stories.length,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16,
                );
              },
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return PostItem(
                  post: posts[index],
                );
              },
              itemCount: posts.length,
              separatorBuilder: (context, index) {
                return Container(
                  height: 16,
                  color: Colors.black.withOpacity(0.1),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
