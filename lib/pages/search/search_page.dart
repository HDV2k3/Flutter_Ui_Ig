import 'package:flutter/material.dart';
import 'package:ig_ui/pages/search/widgets/photos_grid_view.dart';
import 'package:ig_ui/pages/search/widgets/search.dart';
import 'package:ig_ui/pages/search/widgets/tabs_mask.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<int> photos = List.generate(50, (index) => index + 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Search(),
          SizedBox(
            width: double.maxFinite,
            height: 55,
            child: TabsMask(),
          ),
          Expanded(child: PhotosGridView(photos: photos))
        ],
      ),
    );
  }
}
