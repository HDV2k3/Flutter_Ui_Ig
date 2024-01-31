import 'package:flutter/material.dart';
import 'package:ig_ui/pages/profile/widgets_profile/footer_profile.dart';
class GridView_Item extends StatelessWidget {
  const GridView_Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Stack
          (
          children: [
            GridView.count(
              crossAxisCount: 3, // Số cột
              crossAxisSpacing: 3, // Khoảng cách giữa các cột
              mainAxisSpacing: 3, // Khoảng cách giữa các hàng
              padding: const EdgeInsets.all(5), // Phần đệm xung quanh GridView
              children: List.generate(9, (index) {
                return Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text(
                      'Hình ${index + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                );
              }),
            ),
          Padding(padding: EdgeInsets.only(top: 330),
            child:Container(
              height: 70,
              color: Colors.white,
            ),
          ),
            Padding(padding: EdgeInsets.only(top: 335),
            child: Footer_Profile(),
            ),
          ],

        ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}