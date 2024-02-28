import 'package:flutter/material.dart';

class PhotosItem extends StatelessWidget {
  const PhotosItem({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://picsum.photos/250?image=$index',
      errorBuilder: (context, url, error) => const SizedBox(),
      fit: BoxFit.fitWidth,
    );
  }
}
