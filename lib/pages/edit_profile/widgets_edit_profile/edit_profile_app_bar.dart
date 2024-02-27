import 'package:flutter/material.dart';

class EditProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EditProfileAppBar({
    required this.onCancel,
    required this.onDone,
    Key? key,
  }) : super(key: key);

  final VoidCallback onCancel;

  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      centerTitle: true,
      leadingWidth: 64,
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onCancel,
        child: const Center(
          child: Padding(padding: EdgeInsets.only(left: 12),
            child: Text(
              'Cancel',
              style: TextStyle(
                fontSize: 16,
                color: Color(
                  0xFF262626,
                ),
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
      title: const Text(
        'Edit Profile',
        style: TextStyle(
          fontSize: 16,
          color: Color(
            0xFF262626,
          ),
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onDone,
          child: const Center(
            child: Text(
              'Done',
              style: TextStyle(
                fontSize: 16,
                color: Color(
                  0xFF3897F0,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 13,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.5),
        child: Container(
          color: const Color(0x1A000000),
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
