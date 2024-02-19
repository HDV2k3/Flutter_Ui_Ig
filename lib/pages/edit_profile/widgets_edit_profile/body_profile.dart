import 'package:flutter/material.dart';

class BodyProfileEdit extends StatelessWidget
{
  const BodyProfileEdit({super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: 'Huỳnh Đắc Việt');
    TextEditingController nameController1 = TextEditingController(text: 'DevLo');
    TextEditingController nameController2 = TextEditingController(text: 'dacviethuynh@gmail.com');
    TextEditingController nameController3 = TextEditingController(text: '+84 329 615 309');
    TextEditingController nameController5 = TextEditingController(text: 'Male');

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 120, left: 0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Oval_Profile.png',
                width: 95,
                height: 95,
              ),
              const SizedBox(height: 12.5),
              TextButton(
                onPressed: () {
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                ),
                child: const Text('Change Profile Photo'),
              ),
              Opacity(
                opacity: 0.5, // Độ mờ (giá trị từ 0.0 đến 1.0)
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
          Column(

            children: [
            Container(
            height: 50,
            child: Row(
              children: [
            const    Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Name', style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(

                      ),
                    ),
                  ),
                ),
              ],
            ),

          ),
              Container(
                height: 50,
               child: Row(
                  children: [
                    const   Expanded(
                      flex: 1,
                      child: Padding(padding:  EdgeInsets.only(left: 15),
                        child: Text('Username', style: TextStyle(color: Colors.black)),),

                    ),
                    const    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30), child: TextField(
                        controller: nameController1,
                        decoration: InputDecoration(),
                      ),

                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 50,
                child: const Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:Padding(padding: EdgeInsets.only(left: 15),
                        child: Text('Website', style: TextStyle(color: Colors.black)),
                      )

                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Padding(padding: EdgeInsets.only(right: 30),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ' website',
                          ),
                        ),
                      )

                    ),
                  ],
                ),
              ),
                 Container(
                   height: 50,
                   child :const Row(
                     children: [
                       Expanded(
                         flex: 1,
                         child: Padding(padding: EdgeInsets.only(left: 15),
                           child: Text('Bio', style: TextStyle(color: Colors.black)),
                         )

                       ),
                       SizedBox(width: 10),
                       Expanded(
                         flex: 3,
                         child: Padding(padding: EdgeInsets.only(right: 30),
                             child: TextField(
                               decoration: InputDecoration(
                                 hintText: 'Enter your bio',
                                 border: InputBorder.none,
                               ),
                         )

                         ),
                       ),
                     ],
                   ),
                 ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
            ],
          ),


              Opacity(
                opacity: 0.5, // Độ mờ (giá trị từ 0.0 đến 1.0)
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // Xử lý sự kiện khi nhấn vào nút
                },
                child :const Padding(padding: EdgeInsets.only(left: 2),
                  child: Text('Switch to Professional Account',style: TextStyle(color: Colors.blue),),
               ),
              ),
              ],
              ),
             const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 16),
                     child: Text('Private Information',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)

                  )

                ],
              ),
          Column(

            children: [
              Container(
                height: 50,
                child: Row(
                  children: [
                    const    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Email', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: TextField(
                          controller: nameController2,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                height: 50,
                child: Row(
                  children: [
                    const   Expanded(
                      flex: 1,
                      child: Padding(padding:  EdgeInsets.only(left: 15),
                        child: Text('Phone', style: TextStyle(color: Colors.black)),),

                    ),
                    const    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30), child: TextField(
                        controller: nameController3,
                        decoration: InputDecoration(),
                      ),

                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 50,
                child: Row(
                  children: [
                  const  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Gender', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    const   SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: Padding(padding: EdgeInsets.only(right: 50),
                    child: TextFormField(
                      controller: nameController5,
                      decoration: InputDecoration(),
                    ),
                    ),
                  ),
                  ],
                ),
              ),
          ],
        ),
            ],
          ),
        ),
      ],
    );
  }
}