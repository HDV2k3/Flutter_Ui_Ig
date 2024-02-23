import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(0), // Phần đệm xung quanh Container
              child: GridView.count(
                crossAxisCount: 3, // Số cột
                crossAxisSpacing: 3, // Khoảng cách giữa các cột
                mainAxisSpacing: 3, // Khoảng cách giữa các hàng
                children: List.generate(9, (index) {
                  return Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text(
                        'Hình ${index + 1}',
                        style:const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
//lesson 9 update Bottom , tabbar,appbar