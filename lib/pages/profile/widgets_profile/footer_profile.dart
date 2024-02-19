import 'package:flutter/material.dart';

class Footer_Profile extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Image.asset('assets/icons/Tab1.png'),
            ),
            Expanded(child: Image.asset('assets/icons/Tab2.png'),
            ),
            Expanded(child: Image.asset('assets/icons/Tab3.png'),
            ),
            Expanded(child: Image.asset('assets/icons/Tab4.png'),
            ),
            Expanded(child: Image.asset('assets/icons/Tab5.png'),
            ),
          ],
        )
      ],
    );
  }
}
//lesson 9 update Bottom , tabbar,appbar