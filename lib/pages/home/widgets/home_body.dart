import 'package:flutter/material.dart';

import '../home_page.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var selectedTabIndex = 0;
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
