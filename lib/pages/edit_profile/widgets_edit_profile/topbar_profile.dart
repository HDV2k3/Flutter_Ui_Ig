import 'package:flutter/material.dart';

class TopBar_Profile_Edit extends StatelessWidget
{
  const TopBar_Profile_Edit({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 70,
                width: double.maxFinite,
                padding: const EdgeInsets.all(5),
             decoration: const BoxDecoration(
                  color: Color(0xFFFAFAFA), // Màu nền là #FAFAFA
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFA6A6AA),
                      offset: Offset(0, 0.33),
                      blurRadius: 0.5,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: TextButton(
                                onPressed: () {

                                },
                                child: const Text(
                                  'Cancel',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        const  Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                'Edit Profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: TextButton(
                                onPressed: () {

                                },
                                child: const Text(
                                  'Done',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}//Author Việt Huỳnh