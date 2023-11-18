// ignore_for_file: sort_child_properties_last, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'components/buttons.dart';
import 'components/colors.dart';
import 'components/text.dart';

class RestDetails extends StatefulWidget {
  const RestDetails({super.key});

  @override
  State<RestDetails> createState() => _RestDetailsState();
}

class _RestDetailsState extends State<RestDetails> {
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
                      child: Image.asset("assets/dgagbrost.png",
                          fit: BoxFit.fill)),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReTextNormalSizeColor(
                        text: "العبدلي - مطاعم", size: 10, color: grey),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ReTextNormalSizeColor(
                          text: '512',
                          size: 13,
                          color: green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.remove_red_eye, color: green,size: 20,)
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReTextNormalSizeColor(
                        text: 'دجاج بروست',
                        size: 16,
                        color: black,
                      ),
                    ],
                  ),
                ),
                ReTextNormalSizeColor(text: "التفاصيل", size: 12, color: grey),
                ReTextSize(
                  text: "دجاج مقلي-وجبات عائلية-استربس",
                  size: 16,
                ),
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
                          text: "زمن التوصيل", size: 12, color: grey),
                      SizedBox(
                        height: 10,
                      ),
                      ReTextNormalSizeColor(
                          text: "30m : 50m", size: 12, color: black),
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
                         SvgPicture.asset("assets/logo/star.svg",height: 16,),
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
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: green,
                          ),
                          child: Center(
                              child: ReTextNormalSizeColor(
                                  text: "مفتوح",
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
          Container(
            child: Image.asset("assets/map.png"),
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReButton2(
                onPressed: () {},
                child: ReTextNormalSizeColor(
                    text: "تواصل عبر whatsapp", size: 12, color: Colors.white),
                color: green,
                width: 154,
                height: 48,
              ),
              
              Material(
                color: Colors.transparent,
                child: InkWell(
                  radius: 8,
                  highlightColor: grey,
                  splashColor: grey,
                  onTap: (){},
                  child: Container(
                      height: 48,
                      width: 154,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: lightblue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReTextNormalSizeColor(
                              text: "إتصال هاتفي", size: 12, color: Colors.white),
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset("assets/logo/call.svg",color:Colors.white, height: 20,)
                        ],
                      )),
                ),
              ),
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
