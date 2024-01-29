
import 'package:flutter/material.dart';

// class Search_Direct_Message extends StatelessWidget
// {
//   const Search_Direct_Message({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(top: 15, left: 14, right: 14),
//           child: Stack(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   hintText: 'Search',hintStyle: TextStyle(color: Colors.grey),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
//                 ),
//               ),
//             Image.asset('assets/icons/Search_Icon.png',
//               height: 50,
//               width: 50,
//             )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
class Search_Direct_Message extends StatelessWidget {
  const Search_Direct_Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 8, right: 8),
      child: Stack(
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/icons/Search_Icon.png',
              height: 40,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}