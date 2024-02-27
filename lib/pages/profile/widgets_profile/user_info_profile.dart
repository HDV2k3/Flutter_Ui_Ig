import 'package:flutter/material.dart';
import 'package:ig_ui/pages/profile/models/user.dart';

class ProfileUserInfo extends StatelessWidget {
  const ProfileUserInfo({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(11),
          child: Row(
            children: [
              _buildAvatar(),
              const SizedBox(
                width: 35,
              ),
              Expanded(
                child: _buildStatistic(),
              ),
              const SizedBox(
                width: 28,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildName(),
              const SizedBox(
                height: 1,
              ),
              _buildBio(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFC7C7CC),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(48),
      ),
      child: Center(
        child: Image.asset(
          user.avatar,
          width: 86,
          height: 86,
        ),
      ),
    );
  }

  Widget _buildStatistic() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStatisticItem(
          title: 'Posts',
          value: user.numberOfPosts,
        ),
        _buildStatisticItem(
          title: 'Followers',
          value: user.numberOfFollowers,
        ),
        _buildStatisticItem(
          title: 'Following',
          value: user.numberOfFollowing,
        ),
      ],
    );
  }

  Widget _buildStatisticItem({
    required String title,
    required int value,
  }) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget _buildName() {
    return Text(
      user.name,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildBio() {
    return Text(
      user.bio,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 17 / 12,
      ),
    );
  }
}
