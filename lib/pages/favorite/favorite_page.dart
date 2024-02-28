import 'package:flutter/material.dart';
import 'package:ig_ui/pages/favorite/widgets/follow_request.dart';
import 'package:ig_ui/pages/favorite/widgets/list_notification.dart';
import 'models/top_bar_model.dart';
import 'package:ig_ui/pages/favorite/widgets/top_bar.dart';
import 'models/top_bar_items.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>
    with SingleTickerProviderStateMixin {
  late TabBarModel _tabBarModel; // Model để quản lý trạng thái của thanh tab
  late TabController _tabController; // Để quản lý các tab trong TabBarView

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabBarModel = TabBarModel(
      tabs: [
        TabItem(title: 'Following', selected: true),
        TabItem(title: 'You'),
      ],
      controller: _tabController,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBarWidget(
              tabBarModel: _tabBarModel, tabController: _tabController),
          const FollowRequestsWidget(),
          const Expanded(child: ListViewNotification())
        ],
      ),
    );
  }
}
