// ignore_for_file: prefer_const_constructors


import 'package:almazr3a/views/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'components/buttons.dart';
import 'components/text.dart';
import 'login_screen.dart';

class SuccessfullyChanged extends StatefulWidget {
  const SuccessfullyChanged({super.key});

  @override
  State<SuccessfullyChanged> createState() => _SuccessfullyChangedState();
}

class _SuccessfullyChangedState extends State<SuccessfullyChanged> {
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;

    return
          Scaffold(
           body:
           Column(children: [
            SizedBox(height: 50,),
            SizedBox(height: w/8,),
            Center(
             
               child: Icon(Icons.check_circle_rounded, color: Color(0xff45b22b) , size: 150,),
              ),
            
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: ReTextNormalSize(
                text: "تم تغيير كلمة المرور بنجاح", size: 18,)),
            ),
            
            SizedBox(height: w/2.5,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Button3(
                     color: Color(0xff45b22b),
                     route: () {
                       Get.offAll(LoginScreen());
                     },
                     txt: "سجل الدخول",
                    ),
                    SizedBox(height: 24,),
                    Button3TextColor(
                     color: Colors.white,
                     route: () {
                       Get.offAll(LoginScreen());
                     },
                     txt: "إنشاء حساب جديد",
                     textColor: black,
                    ),
                  ],
                ),
              ),
            ),

              ])
            
    );
  }
}