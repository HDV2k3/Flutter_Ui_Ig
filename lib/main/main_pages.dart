import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/home/home_page.dart';
import '../pages/profile/profile_page1.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0x1A000000),
              width: 0.5,
            ),
          ),
        ),
        child: _buildBottomNavigationBar(),
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

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedTabIndex,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(
              _selectedTabIndex == 0
                  ?   'assets/icons/selected_home_tab.svg'
                  : 'assets/icons/home_tab.svg',
              height: 24,
              fit: BoxFit.fitHeight,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(
              _selectedTabIndex == 1
                  ? 'assets/icons/selected_search_tab.svg'
                  :   'assets/icons/search_tab.svg',
              height: 24,
              fit: BoxFit.fitHeight,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(
              'assets/icons/new_tab.svg',
              height: 24,
              fit: BoxFit.fitHeight,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(
              _selectedTabIndex == 3
                  ? 'assets/icons/selected_favorite_tab.svg'
                  :  'assets/icons/favorite_tab.svg',
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
                  color: _selectedTabIndex == 4
                      ? Colors.black
                      : Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(13.5),
              ),
              padding: const EdgeInsets.all(2),
              width: 28,
              height: 28,
              child: Center(
                child: Image.asset(
                  'assets/images/avatar.png',
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
    );
  }

  Widget _buildBody() {
    switch (_selectedTabIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Center(
          child: Text('Search Screen'),
        );
      case 2:
        return const Center(
          child: Text('New Screen'),
        );
      case 3:
        return const Center(
          child: Text('Favorite Screen'),
        );
      case 4:
        return const ProfilePage();
      default:
        return const SizedBox();
    }
  }
}
