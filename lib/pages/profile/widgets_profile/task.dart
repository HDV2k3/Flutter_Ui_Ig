import 'package:flutter/material.dart';

class Task extends StatelessWidget
{
  const Task({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ImageIcon(
                  AssetImage('assets/icons/Grid_Icon.png'),
                  size: 60,
                ),
              ),
            ),
            Tab(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ImageIcon(
                  AssetImage('assets/icons/Tags_Icon.png'),
                  size: 60,
                ),
              ),
            ),
          ],
          labelColor: Colors.black,
        ),
      ),
    );
  }
}
