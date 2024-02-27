import 'package:flutter/material.dart';
import 'profile_post_item.dart';

class ProfilePostGridView extends StatelessWidget {
  const ProfilePostGridView({
    required this.posts,
    Key? key,
  }) : super(key: key);

  final List<int> posts;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      childAspectRatio: 1,
      children: posts.map((e) => ProfilePostItem(index: e)).toList(),
    );
  }
}
