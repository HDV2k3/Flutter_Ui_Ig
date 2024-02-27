import 'package:flutter/material.dart';

import '../../profile/models/user.dart';

class EditProfileCommonInfo extends StatelessWidget {
  const EditProfileCommonInfo({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildRowItem(title: 'Name', value: user.name),
        _buildRowItem(title: 'Username', value: user.username),
        _buildRowItem(title: 'Website', value: user.website),
        _buildRowItem(title: 'Bio', value: user.bio, showDivider: false),
        const Divider(
          color: Color(0x4A3C3C43),
          height: 0.33,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: _buildSwitchProfession(),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: _buildPrivateInformation(),
        ),
        _buildRowItem(title: 'Email', value: user.email),
        _buildRowItem(title: 'Phone', value: user.phone),
        _buildRowItem(title: 'Gender', value: user.gender),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _buildPrivateInformation() {
    return const Text(
      'Private Information',
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF262626),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSwitchProfession() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: const Text(
        'Switch to Professional Account',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Color(0xFF3897F0),
        ),
      ),
    );
  }

  Widget _buildRowItem({
    required String title,
    required String? value,
    bool showDivider = true,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 96,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 0, 15),
            child: Text(title),
          ),
        ),
        Expanded(
          flex: 279,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value ?? title,
                  style: TextStyle(
                    fontSize: 16,
                    color: value == null
                        ? const Color(0x4A3C3C43)
                        : const Color(0xFF262626),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                if (showDivider)
                  const Divider(
                    color: Color(0x4A3C3C43),
                    height: 0.33,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
