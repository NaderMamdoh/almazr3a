// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'Forget_password_Otp.dart';
import 'components/buttons.dart';
import 'components/text.dart';
import 'components/textForm.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
 double w = MediaQuery.of(context).size.width;
 double h = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: h,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 70),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReTextNormalSize(text: "نسيت كلمة المرور",size: 16,),
                            ReSubTextSize(
                              size: 12,
                              text: "أدخل رقم هاتفك المحمول المسجل على التطبيق"),
        
                        ],
                      )
                    ],
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      
                      height: 200,
                      child: Expanded(child: Image.asset("assets/logo/forget.png")),),
                  ),
              
                  SizedBox(
                    height: 10,
                  ), 
                     Padding(
                       padding: const EdgeInsets.all(20),
                       child: ReTextFormField(
                        controller: TextEditingController(),
                        text: '',
                       ),
                     ),
                 SizedBox(
                    height: 10,
                  ), 
                 
                  SizedBox(
                    height: w / 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Button3(
                        color: Colors.green,
                        route: () {
                          Get.to(ForgetPasswordOtp());
                        },
                        txt: "تأكيد",
                       
                        ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}