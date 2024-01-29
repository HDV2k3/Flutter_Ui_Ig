import 'package:flutter/material.dart';

class TopBar_Direct_Message extends StatelessWidget
{
  const TopBar_Direct_Message({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Container(
      height: 50,
      width: double.maxFinite,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFA6A6AA),
            offset: Offset(0, 0.33),
            blurRadius: 0.5,
            spreadRadius: 0,
          ),
        ],
        border: Border.all(
          color: Color(0xFFFAFAFA),
          width: 2.0,
        ),
      ),
      child: Stack(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Image.asset(
                  'assets/icons/Back.png',
                  width: 30,
                  height: 30,
                ),
              )
          ),
          Container(
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Expanded(

                  flex: 1,

                  child: Padding(padding:  EdgeInsets.only(left: 180,top: 10),
                    child: Text('DevLo', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),

                ),
                const SizedBox(height: 16),

              ],

            ),

          ),
          Expanded(
              child: Padding(padding: EdgeInsets.only(left: 225,top: 17),
                child: Image.asset('assets/icons/Shape_down.png'),
              )
          ),
          const SizedBox(height: 16),
          Expanded(child: Padding(padding: EdgeInsets.only(left: 370,top: 10),
            child: Image.asset('assets/icons/Add_Chat.png'),

          ),
          ),
          const SizedBox(height: 16),
        ],

      ),


    ),
    );


  }
}