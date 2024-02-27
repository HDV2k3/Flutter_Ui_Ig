import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Profile Screen'),
      backgroundColor: Colors.white,
      actions: [
        GestureDetector(
          child: Padding(
            padding:const EdgeInsets.only(right: 13),
            child: SvgPicture.asset('assets/icons/humberger.svg'),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(44);
}
