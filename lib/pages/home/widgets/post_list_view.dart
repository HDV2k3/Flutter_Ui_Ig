import 'package:flutter/material.dart';
import '../models/post.dart';
import 'post_item.dart';

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
