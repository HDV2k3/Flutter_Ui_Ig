import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/home/widgets/bottom_navigation_bar.dart';
import '../pages/home/widgets/home_body.dart';

class MainPageHome extends StatefulWidget {
  const MainPageHome({Key? key}) : super(key: key);

  @override
  State<MainPageHome> createState() => _MainPageState();
}

class _MainPageState extends State<MainPageHome>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  _buildAppBar(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0x1A000000),
              width: 0.5,
            ),
          ),
        ),
        child:const BottomNavigationBarHome(),
      ),
    );
  }
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      toolbarHeight: 0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }


}