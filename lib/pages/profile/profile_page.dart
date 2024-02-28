import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ig_ui/pages/profile/widgets_profile/app_bar_profile.dart';
import 'package:ig_ui/pages/profile/widgets_profile/profile_add_story.dart';
import 'package:ig_ui/pages/profile/widgets_profile/profile_edit_button.dart';
import 'package:ig_ui/pages/profile/widgets_profile/profile_post_grid_view.dart';
import 'package:ig_ui/pages/profile/widgets_profile/profile_story_list_view.dart';
import 'package:ig_ui/pages/profile/widgets_profile/user_info_profile.dart';
import '../edit_profile/edit_profile_page.dart';
import 'models/profile_story.dart';
import 'models/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  static User user = const User(
    name: 'Jacob West',
    bio: 'Digital goodies designer @pixsellz\nEverything is designed.',
    avatar: 'assets/images/avatar.png',
    numberOfPosts: 54,
    numberOfFollowers: 834,
    numberOfFollowing: 162,
    username: 'jacob_w',
    email: 'jacob.west@gmail.com',
    phone: '+1 202 555 0147',
    gender: 'Male',
  );

  static List<ProfileStory> profileStories = [
    const ProfileStory(
      title: 'Friends',
      image: 'assets/images/avatar1.png',
    ),
    const ProfileStory(
      title: 'Sport',
      image: 'assets/images/avatar2.png',
    ),
    const ProfileStory(
      title: 'Design',
      image: 'assets/images/avatar3.png',
    ),
  ];

  final List<int> gridPosts = List.generate(10, (index) => index + 10);
  final List<int> tagPosts = List.generate(10, (index) => index + 100);

  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const ProfileAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProfileUserInfo(user: user),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ProfileEditButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfilePage(
                          user: user,
                        ),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 14,
                      right: 18,
                    ),
                    child: ProfileAddStory(),
                  ),
                  Expanded(
                    child: ProfileStoryListView(
                      profileStories: profileStories,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                color: Color(0xFFC7C7CC),
                height: 0.5,
              ),
              TabBar(
                controller: _controller,
                tabs: [
                  Tab(
                    icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        _selectedIndex == 0
                            ? const Color(0xFF262626)
                            : const Color(0x66000000),
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset('assets/icons/grid.svg'),
                    ),
                  ),
                  Tab(
                    icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        _selectedIndex == 1
                            ? const Color(0xFF262626)
                            : const Color(0x66000000),
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset('assets/icons/tags.svg'),
                    ),
                  ),
                ],
                indicatorColor: const Color(0xFF262626),
                indicatorWeight: 1,
              ),
              const SizedBox(
                height: 1,
              ),
              if (_selectedIndex == 0)
                ProfilePostGridView(posts: gridPosts)
              else
                ProfilePostGridView(posts: tagPosts)
            ],
          ),
        ),
      ),
    );
  }
}
