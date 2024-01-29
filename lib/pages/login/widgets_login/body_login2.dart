import 'package:flutter/material.dart';


class BodyLogin2 extends StatelessWidget {
  const BodyLogin2({super.key});

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
        const SizedBox(height: 16),


        Padding(
        padding: const EdgeInsets.all(16), // Đặt giá trị padding theo ý muốn
        child: Column(
        children: [
        TextFormField(
        controller: nameController,style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled:true,
          fillColor: const Color(0x00fafafa),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
        color: const Color(0x00fafafa).withOpacity(0.1),
        width: 0.5,
        ),

        ),
        ),
        ),
        const SizedBox(height: 16),
        TextFormField(
        decoration: InputDecoration(
          filled:true,
        fillColor: const Color(0x00fafafa),
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
              child: const Text('Forgot password?'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
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
        const SizedBox(height: 26),
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

              child: const Text('Log in with Facebook',style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),
        const SizedBox(height: 26),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 26),
            const Text('OR',style: TextStyle(color: Colors.grey),),
            const SizedBox(width: 26),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      const SizedBox(height: 36),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text("Don't have an account?"),

            TextButton(


              onPressed: () {
                // Xử lý sự kiện khi text button được nhấn
              },

              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
              ),
              child: const Text('Sign up'),
            ),
          ],
        )
      ],
    );
  }
}