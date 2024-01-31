import 'package:flutter/material.dart';
import 'package:ig_ui/pages/home/home_page.dart';
import 'package:ig_ui/pages/home/widgets/bottomNavigationBar.dart';


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
