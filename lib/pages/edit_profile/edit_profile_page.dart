import 'package:flutter/material.dart';
import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/edit_profile_app_bar.dart';
import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/edit_profile_avatar.dart';
import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/edit_profile_common_info.dart';

import '../profile/models/user.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditProfileAppBar(
        onCancel: () {
          Navigator.of(context).pop();
        },
        onDone: () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EditProfileAvatar(
              user: widget.user,
            ),
            EditProfileCommonInfo(
              user: widget.user,
            ),
          ],
        ),
      ),
    );
  }
}
