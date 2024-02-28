import 'package:flutter/material.dart';

class PhotosListView extends StatelessWidget {
  final List<String> photoUrls;

  const PhotosListView({super.key, required this.photoUrls});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photoUrls.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://picsum.photos/250?image=$index',
            errorBuilder: (context, url, error) => const SizedBox(),
            fit: BoxFit.fitWidth,
          ),
        );
      },
    );
  }
}