import 'package:flutter/material.dart';
import 'dart:math';



class ListMessage extends StatefulWidget {
  const ListMessage({Key? key}) : super(key: key);

  @override
  _ListMessageState createState() => _ListMessageState();
}

class _ListMessageState extends State<ListMessage> {
  final ScrollController _scrollController = ScrollController();
  final Random _random = Random();
  final List<Image> _dataList = [];
  bool _isLoading = false;

  final List<String> _imagePaths = [
    'assets/images/Profile1.png',
    'assets/images/Profile2.png',
    'assets/images/Profile3.png',
    'assets/images/Profile4.png',
    'assets/images/Profile5.png',
    'assets/images/Profile6.png',
    'assets/images/Profile7.png',
    'assets/images/Profile8.png',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _loadData();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMoreData();
    }
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    List<Image> newDataList = List.generate(10, (index) => _getRandomImage());

    setState(() {
      _dataList.addAll(newDataList);
      _isLoading = false;
    });
  }

  Future<void> _loadMoreData() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      List<Image> newDataList = List.generate(3, (index) => _getRandomImage());

      setState(() {
        _dataList.addAll(newDataList);
        _isLoading = false;
      });
    }
  }

  Image _getRandomImage() {
    String randomImagePath = _imagePaths[_random.nextInt(_imagePaths.length)];
    return Image.asset(randomImagePath);
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding:const EdgeInsets.only(top: 0),
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _dataList.length + 1,
              itemBuilder: (context, index) {
                if (index == _dataList.length) {
                  if (_isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return const SizedBox.shrink();
                  }
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _dataList[index],
                        const SizedBox(width: 10.0),
                        const   Expanded(child: Padding(padding: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Việt', style: TextStyle(color: Colors.black)),

                          Row(
                            children: [
                              Text('Hello Word', style: TextStyle(color: Colors.grey)),
                              SizedBox(width: 180,),
                              Expanded(
                                child: Row(
                                  children: [
                                    // Image.asset('assets/icons/Camera_White.png'),
                                    SizedBox(width: 10),
                                    Text('Now', style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
