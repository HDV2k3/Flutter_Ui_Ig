import 'package:flutter/material.dart';

import '../pages/home/home_page.dart';

class BodyWidget extends StatelessWidget {
  final int selectedTabIndex;

  const BodyWidget({super.key, required this.selectedTabIndex});

  @override
  Widget build(BuildContext context) {
    switch (selectedTabIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Center(
          child: Text('Search Screen'),
        );
      case 2:
        return const Center(
          child: Text('New Screen'),
        );
      case 3:
        return const Center(
          child: Text('Favorite Screen'),
        );
      case 4:
        return const Center(
          child: Text('Profile Screen'),
        );
      default:
        return const SizedBox();
    }
  }
}