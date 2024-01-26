import 'package:flutter/material.dart';
import 'package:ig_ui/main.dart';
import 'package:ig_ui/pages/login/widgets/topbarlogin.dart';

class BodyLogin2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: 'asad_khasanov',);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Image.asset(
          'assets/images/InstagramLogo.png',
          width: 182,
          height: 49,
        ),
        SizedBox(height: 16),


        Padding(
        padding: EdgeInsets.all(16), // Đặt giá trị padding theo ý muốn
        child: Column(
        children: [
        TextFormField(
        controller: nameController,style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled:true,
          fillColor: Color(0xFAFAFA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
        color: const Color(0xFAFAFA).withOpacity(0.1),
        width: 0.5,
        ),

        ),
        ),
        ),
        SizedBox(height: 16),
        TextFormField(
        decoration: InputDecoration(
          filled:true,
        fillColor: Color(0xFAFAFA),
        labelText: 'Password',labelStyle: TextStyle(color: Colors.grey[600]),
        border: OutlineInputBorder(


          borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
        color: const Color(0xFF000000).withOpacity(0.1),

    width: 0.5,
    ),
    ),
    ),
    ),
    ],
    ),
    ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Container()),
            TextButton(
              onPressed: () {

              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
              ),
              child: Text('Forgot password?'),
            ),
          ],
        ),
        SizedBox(height: 16),
        Container(
          width: 378,
          height: 44,
          child: ElevatedButton(
            onPressed: () {

            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor:Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
            child:const Text('log In'),
          ),
        ),
        SizedBox(height: 26),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/Shape.png',
              width: 24,
              height: 24,
            ),

            TextButton(
              onPressed: () {
                // Xử lý sự kiện khi nhấn nút
              },

              child: Text('Log in with Facebook',style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),
        SizedBox(height: 26),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 26),
            Text('OR',style: TextStyle(color: Colors.grey),),
            SizedBox(width: 26),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      SizedBox(height: 36),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?"),
            SizedBox(width: 5),
          Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
          ],
        )
      ],
    );
  }
}