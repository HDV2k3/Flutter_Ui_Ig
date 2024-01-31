import 'package:flutter/material.dart';
import 'package:ig_ui/pages/login/widgets_login//body_login2.dart';
import 'package:ig_ui/pages/login/widgets_login/footer_login2.dart';
import 'package:ig_ui/pages/login/widgets_login/body_login.dart';
import 'package:ig_ui/pages/login/widgets_login/footer_login.dart';
import 'package:ig_ui/pages/login/widgets_login/topbar_login2.dart';
import 'package:ig_ui/pages/message/widgets_message/footer_direct_message.dart';
import 'package:ig_ui/pages/message/widgets_message/listchatbox_message.dart';
import 'package:ig_ui/pages/message/widgets_message/search_direct_message.dart';
import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/body_profile.dart';
import 'package:ig_ui/pages/message/widgets_message/topbar_direct_message.dart';
import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/topbar_profile.dart';
import 'package:ig_ui/pages/profile/widgets_profile/BottomNavigationBar.dart';
import 'package:ig_ui/pages/profile/widgets_profile/appbar_profile.dart';
import 'package:ig_ui/pages/profile/widgets_profile/body_profile.dart';

import 'my_app.dart';


void main() {
  runApp( const WidgetProfile());
}

//ui1
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: const Center(
          child: BodyLogin(),
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
            ),
          ),
          child:const FooterLogin(),
        ),
      ),
    );
  }
}
//ui2



class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:const Stack(
          children: [
            Positioned(
              top: 56,
              left: 16,
              width: 10,
              height: 18,
              child: TopBarLogin(),
            ),
            BodyLogin2(),
          ],

        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
            ),
          ),
          child: const FooterLogin2(),
        ),
      ),
    );
  }
}


class MyApp3 extends StatelessWidget
{
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            TopBar_Profile(),
            BodyProfile(),
          ],
        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            TopBar_Direct_Message(),
            Search_Direct_Message(),
            Expanded(child: ListMessage(),),
            Footer_Direct_Message(),
          ],
        ),
      ),
    );
  }
}

class WidgetProfile extends StatelessWidget {
  const WidgetProfile({Key? key}) : super(key: key);

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
//               Expanded(
//   child: ProfilePage(),
// ),

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
