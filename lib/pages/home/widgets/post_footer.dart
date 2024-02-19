import 'package:flutter/material.dart';

import '../../../models/post.dart';


class PostFooter extends StatelessWidget {
  const PostFooter({
    required this.post,
    Key? key,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                     'assets/icons/Like.png',
                      width: 24,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(width: 16),
                    Image.asset(
                     'assets/icons/Comment.png',
                      width: 22,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(width: 16),
                    Image.asset(
                     'assets/icons/Messanger.png',
                      width: 23,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/icons/Save.png',
                      width: 21,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [

              ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    post.like.avatar,
                    width: 17,
                    height: 17,
                  ),

              ),
              const SizedBox(width: 6.5),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF262626),
                  ),
                  children: [
                    const TextSpan(text: "Liked by "),
                    TextSpan(
                      text: post.like.name,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const TextSpan(text: " and "),
                    TextSpan(
                      text: "${post.totalLike} others",
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 6),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF262626),
              ),
              children: [
                TextSpan(
                  text: post.name,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text: post.comment,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
//lesson 9 update Bottom , tabbar,appbar
