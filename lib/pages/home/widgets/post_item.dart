import 'package:flutter/material.dart';

import '../models/post.dart';
import 'post_footer.dart';
import 'post_header.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    required this.post,
    Key? key,
  }) : super(key: key);

  final Post post;

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(
      length: widget.post.images.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: screenWidth,
      child: Column(
        children: [
          PostHeader(post: widget.post),
          SizedBox(
            width: screenWidth,
            height: screenWidth,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Image.asset(
                  widget.post.images[index],
                  fit: BoxFit.fitWidth,
                );
              },
              itemCount: widget.post.images.length,
              controller: _pageViewController,
              onPageChanged: _handlePageViewChanged,
            ),
          ),
          PostFooter(
            post: widget.post,
            selectedImageIndex: _currentPageIndex,
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }
}
