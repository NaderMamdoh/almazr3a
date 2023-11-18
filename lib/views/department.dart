// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'HPbotBar.dart';
import 'components/colors.dart';
import 'components/text.dart';
import 'details.dart';
import 'flutterflow/images..dart';
import 'search.dart';

class Department extends StatefulWidget {
  Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 80,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          
                        },
                        icon: SvgPicture.asset("assets/logo/filteroutline.svg" , 
                              // ignore: deprecated_member_use
                              color: black,
                              height: 20,
                            )
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.to(()=>Search());
                        },
                        icon: SvgPicture.asset("assets/logo/searchn.svg" , 
                              // ignore: deprecated_member_use
                              color: black,
                              height: 20,
                            )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReTextNormalSize(text: "العبدلي",size: 14  ),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          Get.off(()=>HomePage());
                        },
                        icon: Icon(
                          Icons.arrow_circle_left_outlined,
                          size: 30,
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: 
             ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: SafeArea(
                          top: true,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              hoverColor: lightgrey,
                              onTap: (){
                                Get.off(() =>Details());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(240, 222, 235, 241),
                                  boxShadow: 
                                    [BoxShadow(
                                    color: lightgrey,
                                    offset: Offset(0, 1.5),
                                    blurRadius: 10,
                                  )]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 14, 0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          // mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                    child: CarouselSlider.builder(
                                      options: CarouselOptions(
                                        enlargeCenterPage: false,
                                        viewportFraction: 1,
                                        // enlargeFactor: 1,
                                        // height: 340,
                                        // autoPlay: true,
                                      ),
                                      itemCount: images.length,
                                      itemBuilder: (context, itemIndex,
                                          realIndex) {
                                        // return Padding(
                                        //   padding: const EdgeInsets.all(8.0),
                                        return Image.asset(
                                          images[itemIndex],
                                          // height: 370,
                                                    width: w,
                                                    fit: BoxFit.fill,
                                                  );
                                                  // );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      0, 12, 0, 0),
                                              child: ReTextNormalSizeColor(
                                                text: 'مزرعة',
                                                size: 10,
                                                color: Color(0xFF94A3B8),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      0, 7, 0, 0),
                                              child: ReTextNormalSize(
                                                text: 'مزرعة العبدلي للعائلات',
                                                size: 12,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      0, 7, 0, 0),
                                              child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    ReTextNormalSizeColor(
                                                      text: 'المساحة:',
                                                      size: 10,
                                                      color: Color(0xFF94A3B8),
                                                    ),
                                                    ReTextNormalSize(
                                                      text: '12,500',
                                                      size: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    ReTextNormalSize(
                                                      text: 'م.ع',
                                                      size: 10,
                                                    ),
                                                  ]),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      0, 7, 0, 0),
                                              child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    ReTextRichSizeColor(
                                                      text: 'المبنى الرئيسي:',
                                                      size: 10,
                                                      color: Color(0xFF94A3B8),
                                                    ),
                                                    ReTextNormalSizeColor(
                                                      text:
                                                          'صالة كبيرة + غرفة معيشة',
                                                      size: 10,
                                                      color: Colors.black,
                                                    ),
                                                  ]),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      0, 7, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  ReTextNormalSizeColor(
                                                    text: '(أجهزة فقط بدون أواني)',
                                                    size: 10,
                                                    color: green,
                                                  ),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      ReTextNormalSize(
                                                        text: '4600',
                                                        size: 16,
                                                      ),
                                                      SizedBox(width: 3,),
                                                      ReSubTextSize(
                                                        text: 'دينار كويتي',
                                                        size: 12,
                                                        // color: Color(0xFF94A3B8),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 14,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                })));
  }
}
