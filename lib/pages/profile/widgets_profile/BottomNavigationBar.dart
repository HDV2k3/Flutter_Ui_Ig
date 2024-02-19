import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ig_ui/pages/profile/widgets_profile/gridview_item.dart';

class BottomNavigationBarProfile extends StatefulWidget {
  @override
  _BottomNavigationBarProfileState createState() =>
      _BottomNavigationBarProfileState();
}

class _BottomNavigationBarProfileState extends State<BottomNavigationBarProfile> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: const Stack(
        children: [
          GridView_Item(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
            ImageIcon(
              AssetImage('assets/icons/Tab1.png'),
              size: 30,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/Tab2.png'),
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:  ImageIcon(
              AssetImage('assets/icons/Tab3.png'),
              size: 30,

            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:
            ImageIcon(
              AssetImage('assets/icons/Tab4.png'),
              size: 30,

            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:  ImageIcon(
              AssetImage('assets/icons/Tab5.png'),
              size: 30,

            ),
            label: '',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.black),
      ),

    );
  }
}
//lesson 9 update Bottom , tabbar,appbar