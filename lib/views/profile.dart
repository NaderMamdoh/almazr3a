// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:almazr3a/views/HPbotBar.dart';
import 'package:almazr3a/views/components/buttons.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:almazr3a/views/components/text.dart';
import 'package:almazr3a/views/login_screen.dart';
import 'package:almazr3a/views/policy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            // centerTitle: true,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.off(HomePage());
                    },
                    icon: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: black,
                      size: 30,
                    ),
                  ),
                  Center(child: ReTextNormalSize(text: "الملف الشخصي" , size: 14)),
                ]),
          ),
          body: ListView(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 33, 16, 0),
                  child: Column(
                    children: [
                      ReTextNormalSizeColor(
                          text: "بطاقة الهوية الخاص بك على تطبيق مزرعة",
                          size: 12,
                          color: Color(0xFF292D32)),
                      SizedBox(
                        height: 33,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23.0),
                        child: Container(
                         
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 226, 226, 226),
                                blurRadius: 10,
                                // spreadRadius: 0.5
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 7,
                              ),
                              Image.asset(
                                "assets/profile2x.png",
                                height: 56,
                                width: 56,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              ReTextNormalSizeColor(
                                  text: "أحمد سامى",
                                  size: 12,
                                  color: Color(0xFF292D32)),
                              SizedBox(
                                height: 35,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                       SvgPicture.asset("assets/logo/callus.svg" ,color: Colors.green , height: 12),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        ReTextNormalSizeColor(
                                            text: "رقم الهاتف:",
                                            size: 11,
                                            color: Color(0xFF94a3b8)),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        ReTextNormalSizeColor(
                                            text: "+012867252",
                                            size: 11,
                                            color: Color(0xFF292d32)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/logo/sms.svg" ,color: Colors.green , height: 12),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        ReTextNormalSizeColor(
                                            text: "البريد الإلكتروني:",
                                            size: 11,
                                            color: Color(0xFF94a3b8)),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        ReTextNormalSizeColor(
                                            text: "ahmedhh65@gmail.com",
                                            size: 11,
                                            color: Color(0xFF292d32)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(23, 0, 23, 0),
                        child: ReButton2(
                          color: Color(0xFF45b22b),
                          height: 48,
                          width: MediaQuery.of(context).size.width,
                          onPressed: () {},
                          child: ReTextNormalSizeColor(
                              text: "تعديل الملف الشخصي",
                              color: Colors.white,
                              size: 12),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // color: Color(0xffF8FAFC),
                height: 66,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xffF8FAFC), boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 226, 226, 226),
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: BorderSide.strokeAlignOutside

                      // spreadRadius: 0.5
                      ),
                ]),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(36, 0, 36, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(CupertinoIcons.checkmark_shield,
                              color: black, size: 30),
                          SizedBox(
                            width: 27,
                          ),
                          ReTextNormalSizeColor(
                              text: "الشروط و الأحكام", size: 12, color: black)
                        ],
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_circle_left_outlined),
                          color: black,
                          onPressed: () {
                            Get.to(Policy());
                          },
                          iconSize: 24),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(36, 15, 36, 0),
                child: InkWell(
                  onTap: () {
                    Get.off(LoginScreen());
                  },
                  child: Row(
                    children: [
                      // Icon(CupertinoIcons.square_arrow_right,color:red,size: 30),
                      Icon(Icons.logout, color: red, size: 20),
                      SizedBox(
                        width: 27,
                      ),

                      ReTextNormalSizeColor(
                          text: "تسجيل الخروج", size: 12, color: red)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
