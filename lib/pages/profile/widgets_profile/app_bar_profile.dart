import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      centerTitle: true,
      leadingWidth: 39,
      leading: const SizedBox(
        width: 39,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: SvgPicture.asset(
              'assets/icons/lock.svg',
              width: 9,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'jacob_w',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF262626),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.15),
            child: SvgPicture.asset(
              'assets/icons/AccountsList.svg',
              width: 11,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
      actions: [
        SvgPicture.asset('assets/icons/humbler.svg',
        width: 21,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 18,
        )
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
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
