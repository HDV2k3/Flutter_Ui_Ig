
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
      body: Column(
        children: [
          const Expanded(
            child: GridView_Item(),
          ),
          BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/Tab1.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/Tab2.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/Tab3.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/Tab4.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/Tab5.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
            ],
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
        ],
      ),
    );
  }
}
