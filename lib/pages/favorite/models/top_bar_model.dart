import 'package:flutter/material.dart';
import 'package:ig_ui/pages/favorite/models/top_bar_items.dart';

class TabBarModel {
  List<TabItem> tabs;
  TabController controller;
  int selectedIndex = 0;

  TabBarModel({
    required this.tabs,
    required this.controller,
  });
}