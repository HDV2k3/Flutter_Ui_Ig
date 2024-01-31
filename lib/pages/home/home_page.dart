// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:ig_ui/pages/home/widgets/home_app_bar.dart';
// import '../../models/story.dart';
// import 'package:ig_ui/pages/home/widgets/post_list_view.dart';
// import 'package:ig_ui/pages/home/widgets/story_list_view.dart';
// import '../../models/post.dart';
//
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List<Story> stories = [
//     const Story(name: 'Your Story', avatar: 'assets/images/Oval_Profile.png'),
//     const Story(
//       name: 'karennne',
//       avatar: 'assets/images/Profile1.png',
//       isLive: true,
//     ),
//     const Story(name: 'zackjohn', avatar: 'assets/images/Profile1.png'),
//     const Story(name: 'kieron_d', avatar: 'assets/images/Profile2.png'),
//     const Story(name: 'craig_love', avatar: 'assets/images/Profile2.png'),
//     const Story(name: 'karennne', avatar: 'assets/images/Profile3.png'),
//     const Story(name: 'zackjohn', avatar: 'assets/images/Profile4.png'),
//     const Story(name: 'kieron_d', avatar: 'assets/images/Profile5.png'),
//     const Story(name: 'craig_love', avatar: 'assets/images/Profile6.png'),
//   ];
//
//   List<Post> posts = [
//     const Post(
//       name: 'joshua_l',
//       avatar: 'assets/images/Profile1.png',
//       address: 'Tokyo, Japan',
//       images: ["assets/images/post.png"],
//       comment: "The game in Japan was amazing and I want to share some photos",
//       totalLike: 44686,
//       like: Like(
//         name: "craig_love",
//         avatar: "assets/images/Profile1.png",
//       ),
//       isOfficial: true,
//     ),
//     const Post(
//       name: 'joshua_l',
//       avatar: 'assets/images/Profile1.png',
//       images: ["assets/images/post.png"],
//       address: 'Tokyo, Japan',
//       comment: "The game in Japan was amazing and I want to share some photos",
//       totalLike: 44686,
//       like: Like(
//         name: "craig_love",
//         avatar: "assets/images/Profile1.png",
//       ),
//     ),
//     const Post(
//       name: 'joshua_l',
//       avatar: 'assets/images/Profile1.png',
//       images: ["assets/images/post.png"],
//       address: 'Tokyo, Japan',
//       comment: "The game in Japan was amazing and I want to share some photos",
//       totalLike: 44686,
//       like: Like(
//         name: "craig_love",
//         avatar: "assets/images/Profile1.png",
//       ),
//     ),
//     const Post(
//       name: 'joshua_l',
//       avatar: 'assets/images/Profile1.png',
//       images: ["assets/images/post.png"],
//       address: 'Tokyo, Japan',
//       comment: "The game in Japan was amazing and I want to share some photos",
//       totalLike: 44686,
//       like: Like(
//         name: "craig_love",
//         avatar: "assets/images/Profile1.png",
//       ),
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const HomeAppBar(),
//       body: SafeArea(
//         child: Column(
//           children: [
//             StoryListView(
//               stories: stories,
//             ),
//             Expanded(
//               child: PostListView(
//                 posts: posts,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ig_ui/pages/home/widgets/home_app_bar.dart';
import '../../models/story.dart';
import 'package:ig_ui/pages/home/widgets/post_list_view.dart';
import 'package:ig_ui/pages/home/widgets/story_list_view.dart';
import '../../models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Story> stories = [
    const Story(name: 'Your Story', avatar: 'assets/images/Oval_Profile.png'),
    const Story(
      name: 'karennne',
      avatar: 'assets/images/Profile1.png',
      isLive: true,
    ),
    const Story(name: 'zackjohn', avatar: 'assets/images/Profile2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/Profile3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/Profile4.png'),
    const Story(name: 'karennne', avatar: 'assets/images/Profile5.png'),
    const Story(name: 'zackjohn', avatar: 'assets/images/Profile6.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/Profile7.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/Profile8.png'),
  ];

  List<Post> posts = [
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/Profile1.png',
      address: 'Tokyo, Japan',
      images: ["assets/images/post.png"],
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/Profile4.png",
      ),
      isOfficial: true,
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/Profile2.png',
      images: ["assets/images/post.png"],
      address: 'Tokyo, Japan',
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/Profile4.png",
      ),
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/Profile3.png',
      images: ["assets/images/post.png","assets/images/Profile1.png","assets/images/Profile2.png"],
      address: 'Tokyo, Japan',
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/Profile4.png",
      ),
    ),
    const Post(
      name: 'joshua_l',
      avatar: 'assets/images/Profile4.png',
      images: ["assets/images/post.png"],
      address: 'Tokyo, Japan',
      comment: "The game in Japan was amazing and I want to share some photos",
      totalLike: 44686,
      like: Like(
        name: "craig_love",
        avatar: "assets/images/Profile4.png",
      ),
    ),
  ];

  bool _isLoadingStories = false;
  bool _isLoadingPosts = false;

  Future<void> _loadMoreStories() async {
    if (!_isLoadingStories) {
      setState(() {
        _isLoadingStories = true;
      });

      // Simulate API delay
      await Future.delayed(const Duration(seconds: 2));

      List<Story> newStories = List.generate(
        3,
            (index) => Story(
          name: 'new_user_${stories.length + index}',
          avatar: 'assets/images/Profile${index % 8 + 1}.png',
        ),
      );

      setState(() {
        stories.addAll(newStories);
        _isLoadingStories = false;
      });
    }
  }

  Future<void> _loadMorePosts() async {
    if (!_isLoadingPosts) {
      setState(() {
        _isLoadingPosts = true;
      });

      // Simulate API delay
      await Future.delayed(const Duration(seconds: 2));

      List<Post> newPosts = List.generate(
        3,
            (index) => Post(
          name: 'new_user_${posts.length + index}',
          avatar: 'assets/images/Profile${index % 8 + 1}.png',
          images: ["assets/images/post.png"],
          address: 'New Address',
          comment: 'New Comment',
          totalLike: Random().nextInt(10000),
          like: Like(
            name: 'new_user_${posts.length + index}',
            avatar: 'assets/images/Profile${index % 8 + 1}.png',
          ),
        ),
      );

      setState(() {
        posts.addAll(newPosts);
        _isLoadingPosts = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollEndNotification &&
                      notification.metrics.pixels >=
                          notification.metrics.maxScrollExtent - 200) {
                    _loadMoreStories();
                  }
                  return false;
                },
                child: StoryListView(
                  stories: stories,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollEndNotification &&
                      notification.metrics.pixels >=
                          notification.metrics.maxScrollExtent) {
                    _loadMorePosts();
                  }
                  return false;
                },
                child: Stack(
                  children: [
                    posts.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : PostListView(
                      posts: posts,
                    ),
                    if (_isLoadingPosts)
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 620),
                        child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.red),),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

