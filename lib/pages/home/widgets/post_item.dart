import 'package:flutter/material.dart';
import 'package:ig_ui/pages/home/widgets/post_footer.dart';
import 'package:ig_ui/pages/home/widgets/post_header.dart';

import '../../../models/post.dart';
import 'dot_with_post.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    required this.post,
    Key? key,
  }) : super(key: key);

  final Post post;

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  final PageController _pageController = PageController();
  int _currentPage = 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          PostHeader(post: widget.post),
          Container(
            height: 300,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    final imageIndex = index % widget.post.images.length;
                    return Image.asset(

                      widget.post.images[imageIndex],
                      fit: BoxFit.cover,
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index +1 ;
                    });
                  },
                ),
                Expanded(

                  child: Padding(padding: EdgeInsets.only(left: 380),
                    child: Text(
                      '${_currentPage }/${3}',
                      style: TextStyle(
                        color: Colors.black12,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            Stack(
              children: [
                Padding(padding: EdgeInsets.only(top: 285),
                child: Expanded(

                  child: DotsIndicator(
                      itemCount: 3,
                      currentIndex: _currentPage-1,
                ),
                ),
                ),
              ],

              )

              ],
            ),
          ),
          PostFooter(post: widget.post),
        ],
      ),
    );
  }
}