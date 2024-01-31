import 'package:flutter/material.dart';

import '../../../models/post.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    required this.post,
    Key? key,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
         ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                post.avatar,
                width: 32,
                height: 32,
              ),
            ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    post.name,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF262626),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  if (post.isOfficial)
                    Image.asset(
                      'assets/icons/Official_Icon.png',
                      width: 10,
                      height: 10,
                    ),
                ],
              ),
              const SizedBox(height: 1),
              Text(
                post.address,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xFF262626),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Spacer(),
          Image.asset(
            'assets/icons/more_icon.png',
            width: 14,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
