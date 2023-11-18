// ignore_for_file: prefer_const_constructors, file_names, prefer_const_constructors_in_immutables

import 'package:almazr3a/views/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'components/buttons.dart';
import 'components/text.dart';
import 'new_Password_screen.dart';


class ForgetPasswordOtp extends StatefulWidget {

  ForgetPasswordOtp({Key? key,})
      : super(key: key);

  @override
  State<ForgetPasswordOtp> createState() => _ForgetPasswordOtpState();

}

class _ForgetPasswordOtpState extends State<ForgetPasswordOtp> {
  @override
  Widget build(BuildContext context) {
    // double? height;
    // double? width;
    TextEditingController? contrller1;
    TextEditingController? contrller2;
    TextEditingController? contrller3;
    TextEditingController? contrller4;
    TextEditingController? contrller5;
    double w = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 70),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
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
              ),
            ),
          
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReTextNormalSize(
                    text: "1011729301 20+",
                    size: 14,
                  ),
                  ReTextButtonNoUnderlineSize(
                    size:14,
                    text: "تعديل",
                    onpressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textFieldOTP(
                        first: true, last: false, controllerr: contrller1),
                    textFieldOTP(
                        first: false, last: false, controllerr: contrller2),
                    textFieldOTP(
                        first: false, last: false, controllerr: contrller3),
                    textFieldOTP(
                        first: false, last: false, controllerr: contrller4),
                    textFieldOTP(
                        first: false, last: true, controllerr: contrller5),
                  ],
                ),
              ),
            ),
        
            SizedBox(
              height: w / 4,
            ),
            Button(
                padding: EdgeInsets.all(0),
                height: w / 9,
                width: w / 2.5,
                color: Colors.green,
                route: () {
                  Get.to(NewPasswordScreen());
                },
                txt: "تأكيد",
                txtColor: Colors.white,
                shadowColor: Colors.black),
          ]),
        ),
      ),
    );
  }

  Widget textFieldOTP({bool? first, last, TextEditingController? controllerr}) {
    return Container(
      decoration: BoxDecoration(
          color: lightgrey,
          borderRadius: BorderRadius.circular(10)),
       height: MediaQuery.of(context).size.shortestSide * 0.13,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controllerr,
          autofocus: true,
        

          showCursor: true,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            counter: Offstage(),
           
          ),
        ),
      ),
    );
  }
}






