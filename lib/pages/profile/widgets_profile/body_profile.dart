import 'package:flutter/material.dart';
import 'package:ig_ui/pages/profile/widgets_profile/task.dart';

class Body_Profile extends StatelessWidget {
  const Body_Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Expanded(
          child: Stack(
            children: [
            Positioned(
            top: 40,
            right: 300,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Expanded(
                flex: 1,
                child: Image.asset(
                  'assets/icons/Oval.png',
                ),
              ),
            ),
          ),
      const    Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '54',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Post',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '834',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '162',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
              const    Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DevLo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Information Technology @DevLo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Everything is code',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 5.0),
                          primary: Colors.white,
                          side: const BorderSide(
                            color: Colors.grey,
                            width: 0.8,
                          ),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
          Row(
          children: [
         Padding(
              padding: const EdgeInsets.only(top: 270, right: 8,left: 20),
              child: Image.asset(
                'assets/icons/Add_New_Story.png',
              ),
            ),

         Padding(
              padding: const EdgeInsets.only(top: 270, right: 20,left: 10),
              child: Image.asset(
                'assets/icons/Add_Story1.png',
              ),
            ),


             Padding(
              padding: const EdgeInsets.only(top: 270, right: 30,left: 10),
              child: Image.asset(
                'assets/icons/Add_Story2.png',
              ),
            ),

           Padding(
            padding: const EdgeInsets.only(top: 270, right: 40),
            child: Image.asset(
              'assets/icons/Add_Story3.png',
            ),
          ),
      ],
    ),
    ],
    ),
              Padding(padding: EdgeInsets.only(top: 355),
              child: Container(
                color: Colors.grey,
                height: 0.5,
                width: double.maxFinite,
              ),
              ),
             const Padding(padding: EdgeInsets.only(top: 360),
             child: Task(),
             ),

            ],

            ),

            ),
            ],

    );
  }
}