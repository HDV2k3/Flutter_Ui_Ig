import 'package:flutter/material.dart';
//import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/body_profile.dart';
//import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/topbar_profile.dart';
//import 'package:ig_ui/pages/login/widgets_login//body_login2.dart';
//import 'package:ig_ui/pages/login/widgets_login/footer_login2.dart';
//import 'package:ig_ui/pages/login/widgets_login/body_login.dart';
//import 'package:ig_ui/pages/login/widgets_login/footer_login.dart';
//import 'package:ig_ui/pages/login/widgets_login/topbar_login2.dart';
//import 'package:ig_ui/pages/message/widgets_message/footer_direct_message.dart';
//import 'package:ig_ui/pages/message/widgets_message/listchatbox_message.dart';
//import 'package:ig_ui/pages/message/widgets_message/search_direct_message.dart';
//import 'package:ig_ui/pages/message/widgets_message/topbar_direct_message.dart';
import 'package:ig_ui/pages/profile/widgets_profile/BottomNavigationBar.dart';
import 'package:ig_ui/pages/profile/widgets_profile/appbar_profile.dart';
import 'package:ig_ui/pages/profile/widgets_profile/body_profile.dart';
import 'package:ig_ui/pages/home/widgets/bottomNavigationBar.dart';

void main() {
  runApp( const Widget_Profile());
}
class Widget_Profile extends StatelessWidget {
  const Widget_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppBar_Profile(),
              const Expanded(
                child: Body_Profile(),
              ),
              Expanded(
                child: BottomNavigationBarProfile(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarHome(),
    );
  }
}
