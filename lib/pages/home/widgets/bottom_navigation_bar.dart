import 'package:flutter/material.dart';
import '../../../tab_pages/selected_tab_page.dart';

class BottomNavigationBarHome extends StatefulWidget {
  const BottomNavigationBarHome({Key? key}) : super(key: key);

  @override
  BottomNavigationBarHomeState createState() => BottomNavigationBarHomeState();
}

class BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  var _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(selectedTabIndex: _selectedTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                _selectedTabIndex == 0
                    ? 'assets/icons/selected_home.png'
                    : 'assets/icons/home_1.png',
                height: 24,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                _selectedTabIndex == 1
                    ? 'assets/icons/selected_search.png'
                    : 'assets/icons/search_1.png',
                height: 24,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
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
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                _selectedTabIndex == 3
                    ? 'assets/icons/selected_heart.png'
                    : 'assets/icons/heart_1.png',
                height: 24,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _selectedTabIndex == 4 ? Colors.black : Colors.transparent,
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
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
          });
        },
      ),
    );
  }
}