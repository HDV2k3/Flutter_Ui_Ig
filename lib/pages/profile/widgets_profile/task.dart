import 'package:flutter/material.dart';

class Task extends StatelessWidget
{
  const Task({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [

        Expanded(child: Image.asset('assets/icons/Grid_Icon.png'),
        ),
        Expanded(child: Image.asset('assets/icons/Tags_Icon.png'),
        ),
      ],
    );
  }
}