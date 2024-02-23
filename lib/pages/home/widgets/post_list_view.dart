import 'package:flutter/material.dart';
import 'package:ig_ui/pages/home/widgets/post_item.dart';


import '../../../models/post.dart';


class PostListView extends StatelessWidget {
  const PostListView({
    required this.posts,
    Key? key,
  }) : super(key: key);

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
    );
  }
}
//lesson 9 update Bottom , tabbar,appbar