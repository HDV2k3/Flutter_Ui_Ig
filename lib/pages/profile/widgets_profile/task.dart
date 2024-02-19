import 'package:flutter/material.dart';

class Task extends StatelessWidget
{
  const Task({super.key});

  @override
  Widget build(BuildContext context)
  {
<<<<<<< HEAD
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
=======
    return Row(
      children: [

        Expanded(child: Image.asset('assets/icons/Grid_Icon.png'),
        ),
        Expanded(child: Image.asset('assets/icons/Tags_Icon.png'),
        ),
      ],
    );
  }
}
>>>>>>> origin/main
