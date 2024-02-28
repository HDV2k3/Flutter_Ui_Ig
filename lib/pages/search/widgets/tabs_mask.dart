import 'package:flutter/material.dart';

import '../models/tab_models.dart';

class TabsMask extends StatelessWidget {
   TabsMask({super.key});
  final List<TabModel> tabs = [
    TabModel(title: 'IGTV', icon: Icons.tv),
    TabModel(title: 'Shop', icon: Icons.shopping_bag),
    TabModel(title: 'Style', icon: Icons.style),
    TabModel(title: 'Sports', icon: Icons.sports_soccer),
    TabModel(title: 'Music', icon: Icons.music_note),
  ];



 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          body: TabBar(
            isScrollable: true,
            tabs: tabs.map((tab) {
              return Tab(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Màu xám
                    borderRadius: BorderRadius.circular(6), // Độ bo
                  ),
                  child: Row(
                    children: [
                      Icon(tab.icon),
                      const SizedBox(width: 10),
                      Text(tab.title),
                    ],
                  ),
                ),
              );
            }).toList(),
        ),
      ),

    );
  }
}