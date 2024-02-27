import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/post.dart';


class PostFooter extends StatelessWidget {
  const PostFooter({
    required this.post,
    required this.selectedImageIndex,
    Key? key,
  }) : super(key: key);

  final Post post;

  final int selectedImageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildActions(),
          const SizedBox(height: 10),
          _buildReactions(),
          const SizedBox(height: 6),
          _buildDescription(),
        ],
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/like.svg',
                width: 24,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(width: 16),
              SvgPicture.asset(
                'assets/icons/comment.svg',
                width: 22,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(width: 16),
              SvgPicture.asset(
                'assets/icons/messenger.svg',
                width: 23,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        _buildImageCarouselIndicator(),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                'assets/icons/save.svg',
                width: 21,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageCarouselIndicator() {
    return SizedBox(
      height: 6,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selectedImageIndex == index
                  ? const Color(0xFF3897F0)
                  : const Color(0xFF000000).withOpacity(0.15),
            ),
            width: 6,
            height: 6,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: post.images.length,
        shrinkWrap: true,
      ),
    );
  }

  Widget _buildReactions() {
    return Row(
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
              const TextSpan(text: 'Liked by '),
              TextSpan(
                text: post.like.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: '${post.totalLike} others',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return RichText(
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
    );
  }
}
