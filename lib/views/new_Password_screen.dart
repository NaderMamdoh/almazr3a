// ignore_for_file: prefer_const_constructors, file_names

import 'package:almazr3a/views/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'components/buttons.dart';
import 'components/text.dart';
import 'components/textformfieldnew.dart';
import 'successfully_changed.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  bool passwordVisible =true;
  bool passwordVisible2 =true;
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
          child: Padding(
         padding: EdgeInsets.symmetric(vertical: 70),
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        ReTextNormalSize(
                          text: "إنشاء كلمة المرور الجديد",
                          size: 16,),
                         
                    
                      ],
                    )
                  ],
                ),
                ),
                      
                SizedBox(
                    height: 10,
                    ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReTextNormalSize(
                        text: "كلمة المرور الجديدة",
                        size:12 ,),
                    ],
                  ),
                ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:16.0),
                      child: Directionality(
                                    
                                    textDirection: TextDirection.ltr,
                                    child: 
                                    // ReTextFormFieldSuffix_Prefix(
                                      TextForm3(
                                      obscureText: passwordVisible,
                                      text: 'إكتب كلمة المرور',
                                      image: "assets/logo/lock.svg",
                                      controller: controller,
                                      preicon: IconButton(onPressed: (){
                                        // setState(() {
                                         if (passwordVisible==false) {
                                           setState(() {
                                             passwordVisible = true;
                                           });
                                         } else {
                                            setState(() {
                                             passwordVisible = false;
                                           });
                                         }
                                          
                                        // });
                                
                                      }, 
                                      icon: passwordVisible ? Icon(Icons.visibility_off_outlined):Icon(Icons.visibility_outlined)),
                                    ),
                                  ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: Directionality(
                    //     textDirection: TextDirection.ltr,
                    //     child: 
                    //     ReTextFormFieldSuffix_Prefix(
                    //       text:  "إكتب كلمة المرور الجديدة",
                    //       suficon: Icon(Icons.lock_outline_rounded),
                    //       controller: TextEditingController(),
                    //       preicon:
                    //           Icon(Icons.remove_red_eye_rounded),
                    //     ),
                    //   ),
                    // ),
                      
                SizedBox(
                  height: 10,
                ), 
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 16)),
                            Icon(Icons.check_circle_rounded,color:green),
                            SizedBox(width: 10,),
                            ReTextSize(
                                text:
                                    "يجب ألا يحتوي على اسمك ورقم هاتفك",
                                    size: 12,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 16)),
                                Icon(Icons.check_circle_rounded,color:green),
                                SizedBox(width: 10,),
                            
                            ReTextSize(
                              size:12,
                              text: "8 احرف على الاقل"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 16)),
                          Icon(Icons.check_circle_outline_rounded,color:lightgrey),
                            SizedBox(width: 10,),
                             ReSubTextSize(
                                text:
                                    "حروف كبيرة وصغيرة ورموز مثل #@!%^&*",
                                    size: 12,),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20),
                              child: ReTextNormalSize(
                                text: "إعادة كتابة كلمة المرور",
                                size: 12,
                              ),
                            ),
                          ],
                          ),
               SizedBox(
                  height: 8,
                ), 

                Padding(
                      padding: const EdgeInsets.symmetric(horizontal:16.0),
                      child: Directionality(
                                    
                                    textDirection: TextDirection.ltr,
                                    child: 
                                    // ReTextFormFieldSuffix_Prefix(
                                      TextForm3(
                                      obscureText: passwordVisible2,
                                      text: 'إكتب كلمة المرور',
                                      image: "assets/logo/lock.svg",
                                      controller: controller2,
                                      preicon: IconButton(onPressed: (){
                                        // setState(() {
                                         if (passwordVisible2==false) {
                                           setState(() {
                                             passwordVisible2 = true;
                                           });
                                         } else {
                                            setState(() {
                                             passwordVisible2 = false;
                                           });
                                         }
                                          
                                        // });
                                
                                      }, 
                                      icon: passwordVisible2 ? Icon(Icons.visibility_off_outlined):Icon(Icons.visibility_outlined)),
                                    ),
                                  ),
                    ),
              //  Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 20),
              //         child: Directionality(
              //           textDirection: TextDirection.ltr,
              //           child: ReTextFormFieldSuffix_Prefix(
              //             text: 'كلمة المرور',
              //             suficon: Icon(Icons.lock_outline_rounded),
              //             controller: TextEditingController(),
              //             preicon:
              //                 Icon(Icons.remove_red_eye_rounded),
              //           ),
              //         ),
              //       ),
                      
                SizedBox(
                  height: w / 15,
                ),
               
              ]),
                   Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Button3(
                      color: Colors.green,
                      route: () {
                        Get.offAll(SuccessfullyChanged());
                      },
                      txt: "تأكيد",
                     ),
                ), ] ),
            ),
          ),
      ),
     ) );
  }
}