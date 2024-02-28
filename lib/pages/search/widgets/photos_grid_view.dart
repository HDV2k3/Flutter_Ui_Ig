import 'package:flutter/material.dart';
import 'package:ig_ui/pages/search/widgets/item_photos.dart';

class PhotosGridView extends StatelessWidget {
  const PhotosGridView({
    required this.photos,
    Key? key,
  }) : super(key: key);

  final List<int> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      childAspectRatio: 1,
      children: photos.map((e) => PhotosItem(index: e)).toList(),
    );
  }
}
