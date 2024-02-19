import 'package:flutter/material.dart';
import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/body_profile.dart';
import 'package:ig_ui/pages/edit_profile/widgets_edit_profile/topbar_profile.dart';
import 'package:ig_ui/pages/login/widgets_login//body_login2.dart';
import 'package:ig_ui/pages/login/widgets_login/footer_login2.dart';
import 'package:ig_ui/pages/login/widgets_login/body_login.dart';
import 'package:ig_ui/pages/login/widgets_login/footer_login.dart';
import 'package:ig_ui/pages/login/widgets_login/topbar_login2.dart';
import 'package:ig_ui/pages/message/widgets_message/footer_direct_message.dart';
import 'package:ig_ui/pages/message/widgets_message/listchatbox_message.dart';
import 'package:ig_ui/pages/message/widgets_message/search_direct_message.dart';
import 'package:ig_ui/pages/profile/widgets_profile/BottomNavigationBar.dart';
import 'package:ig_ui/pages/profile/widgets_profile/appbar_profile.dart';
import 'package:ig_ui/pages/profile/widgets_profile/body_profile.dart';
import 'package:ig_ui/pages/message/widgets_message/topbar_direct_message.dart';
import 'package:ig_ui/pages/home/widgets/bottomNavigationBar.dart';

void main() {
  runApp( const Home());
}
// class Login extends StatelessWidget {
//   const Login({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//
//         ),
//         body: const Center(
//           child: BodyLogin(),
//         ),
//         bottomNavigationBar: Container(
//           height: 60,
//           decoration: BoxDecoration(
//             border: Border(
//               top: BorderSide(
//                 color: Colors.grey.withOpacity(0.5),
//                 width: 1.0,
//               ),
//             ),
//           ),
//           child:const FooterLogin(),
//         ),
//       ),
//     );
//   }
// }
// class Next_Login extends StatelessWidget {
//   const Next_Login({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body:const Stack(
//           children: [
//             Positioned(
//               top: 56,
//               left: 16,
//               width: 10,
//               height: 18,
//               child: TopBarLogin(),
//             ),
//             BodyLogin2(),
//           ],
//
//         ),
//         bottomNavigationBar: Container(
//           height: 60,
//           decoration: BoxDecoration(
//             border: Border(
//               top: BorderSide(
//                 color: Colors.grey.withOpacity(0.5),
//                 width: 1.0,
//               ),
//             ),
//           ),
//           child: const FooterLogin2(),
//         ),
//       ),
//     );
//   }
// }
//
//
// class Edit_Profile extends StatelessWidget
// {
//   const Edit_Profile({super.key});
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           children: [
//             TopBar_Profile_Edit(),
//             BodyProfileEdit(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Message extends StatelessWidget {
//   const Message({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           children: [
//             TopBar_Direct_Message(),
//             Search_Direct_Message(),
//             Expanded(child: ListMessage()),
//             Footer_Direct_Message(),
//           ],
//         ),
//       ),
//     );
//   }
// }
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
//lesson 9 update Bottom , tabbar,appbar