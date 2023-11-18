// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:almazr3a/views/components/buttons.dart';
import 'package:almazr3a/views/components/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'HPbotBar.dart';
import 'components/colors.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: ListView(
        children: [
          Stack(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                      width: w,
                      height: 325,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Image.asset("assets/home2.png", fit: BoxFit.fill)),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.off(HomePage());
                          },
                          icon: Icon(Icons.arrow_circle_right_outlined,
                            size: 30, color: Colors.white),
                        ),
                         SvgPicture.asset("assets/logo/heart.svg",color: Colors.white,height: 25,),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReTextNormalSizeColor(text: "مزرعة", size: 12, color: grey),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReTextNormalSizeColor(
                        text: 'مزرعة العائلات بالعبدلي',
                        size: 14,
                        color: black,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ReTextNormalSize(
                            text: '4600 ',
                            size: 14,
                          ),
                          ReTextNormalSizeColor(
                            text: 'دينار كويتي',
                            size: 12,
                            color: Color(0xFF94A3B8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ReTextNormalSizeColor(text: "التفاصيل", size: 12, color: grey),
                ReTextNormalSizeColor(
                    text: "مزرعة دار أمى نورا", size: 10, color: grey),
                ReTextNormalSizeColor(
                    text:
                        "موقع متميز فى العبدلى والتأجير فقط للعائلات مساحة المزرعة 12500 الف مزرعة متكاملة المبنى الرئيسـى :صالة كبيرة +غرفة قعدة عائلية +مطبخ (أجهزة فقط بدون أوانى)",
                    size: 10,
                    color: grey),
              ],
            ),
          ),
           Padding(
                padding: EdgeInsetsDirectional.only( bottom: 27 , start: 16 , top: 8),
                child: 
                 Container(
                  height: 20,
                  width: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Material(
                    color: Color.fromARGB(0, 64, 233, 255),
                    child: InkWell(
                      highlightColor: lightgrey,
                      // splashColor: Color.fromARGB(255, 29, 85, 7),
                    child: Row(
                    children: [
                      ReTextNormalSizeColor(text: "المزيد", size: 12, color: green),
                      SizedBox(width: 8,),
                      SvgPicture.asset("assets/logo/arrow-square-down.svg" , color: green, height: 20,)
                    ],
                  ),
                  onTap: () {
                    
                  },
                  ),
          )
          )
          ),
          Divider(),
          SizedBox(
            width: w,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ReTextNormalSizeColor(
                          text: "المساحة", size: 12, color: grey),
                      SizedBox(
                        height: 10,
                      ),
                      ReTextNormalSizeColor(
                          text: "12.500 م.ع", size: 12, color: black),
                    ],
                  ),
                  Column(
                    children: [
                      ReTextNormalSizeColor(
                          text: "التقييم", size: 12, color: grey),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.star_fill,
                            color: yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ReTextNormalSizeColor(
                              text: "4.5", size: 16, color: black),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ReTextNormalSizeColor(
                          text: "الحالة", size: 12, color: grey),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 29,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: green,
                          ),
                          child: Center(
                              child: ReTextNormalSizeColor(
                                  text: "متاحة للإيجار",
                                  size: 10,
                                  color: Colors.white))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ReTextNormalSizeColor(
                text: "الموقع على الخريطة", size: 12, color: grey),
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset("assets/map.png"),
          SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReButton2(
                onPressed: () {},
                color: green,
                width: 154,
                height: 48,
                child: ReTextNormalSizeColor(
                    text: "تواصل عبر whatsapp", size: 12, color: Colors.white),
              ),
              Container(
                  height: 48,
                  width: 154,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: lightblue,
                  ),
                  child: Material(
                    color: Color.fromARGB(0, 64, 233, 255),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      highlightColor: Color.fromARGB(255, 16, 102, 136),
                      // splashColor: Color.fromARGB(255, 29, 85, 7),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReTextNormalSizeColor(
                          text: "إتصال هاتفي", size: 12, color: Colors.white),
                      SizedBox(
                        width: 8,
                      ),

                      SvgPicture.asset("assets/logo/call-callingW.svg" , 
                              color: Colors.white,
                              height: 20,
                            )
                    ],
                  ),
                  onTap: () {
                    
                  },
                  ),
          )),
          ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
