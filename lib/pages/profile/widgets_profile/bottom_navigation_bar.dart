
import 'package:flutter/material.dart';
import 'package:ig_ui/pages/profile/widgets_profile/grid_view_item.dart';
class BottomNavigationBarProfile extends StatefulWidget {
  const BottomNavigationBarProfile({super.key});

  @override
  BottomNavigationBarProfileState createState() =>
      BottomNavigationBarProfileState();
}

class BottomNavigationBarProfileState extends State<BottomNavigationBarProfile> {
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
            child: GridViewItem(),
          ),
          BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding:const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/home_1.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding:const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/search_1.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding:const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/plus_1.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding:const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/heart_1.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(13.5),
                    ),
                    padding: const EdgeInsets.all(2),
                    width: 28,
                    height: 28,
                    child: Center(
                      child: Image.asset(
                        'assets/icons/Oval.png',
                        height: 24,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
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
            selectedIconTheme: const IconThemeData(color: Colors.black),
            unselectedIconTheme:const IconThemeData(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
