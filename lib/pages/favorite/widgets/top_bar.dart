import 'package:flutter/material.dart';

import '../models/top_bar_model.dart';

class TabBarWidget extends StatelessWidget {
  final TabBarModel tabBarModel;
  final TabController tabController;

  const TabBarWidget({
    required this.tabBarModel,
    required this.tabController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (index) {
        tabBarModel.selectedIndex = index;
      },
      controller: tabController,
      indicatorColor: Colors.grey,
      tabs: tabBarModel.tabs.map((tab) {
        return Tab(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              tab.title,
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 21 / 16,
                letterSpacing: -0.33,
                color: tabBarModel.selectedIndex == tabBarModel.tabs.indexOf(tab)
                    ? Colors.black
                    : Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}