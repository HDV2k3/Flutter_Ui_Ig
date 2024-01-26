import 'package:flutter/material.dart';
import 'package:ig_ui/pages/login/widgets/body_login2.dart';
import 'package:ig_ui/pages/login/widgets/footer_login2.dart';
import 'package:ig_ui/pages/login/widgets/topbarlogin.dart';


void main() {
  runApp( MyApp());
}
//ui1
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//
//         ),
//         body: Center(
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
//           child: FooterLogin(),
//         ),
//       ),
//     );
//   }
// }
//ui2
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
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
          child: FooterLogin2(),
        ),
      ),
    );
  }
}

