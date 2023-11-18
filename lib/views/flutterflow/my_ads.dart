// ignore_for_file: prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:almazr3a/views/HPbotBar.dart';
import 'package:almazr3a/views/components/buttons.dart';
import 'package:almazr3a/views/edit_ad.dart';
import 'package:almazr3a/views/make_ads.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../components/colors.dart';
import '../components/text.dart';
import 'package:flutter/material.dart';

import 'images..dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  _MyAdsState createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  // late MyAds _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => HomePageModel());
  // }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        // automaticallyImplyLeading: false,
        leading: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            child: IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                color: green,
                size: 30,
              ),
              onPressed: () {
                Get.off(()=>MakeAds());
              },
            ),
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(1.00, 0.00),
          child: ReTextSize(
            text: 'إعلاناتي',
            size: 14,
          ),
        ),

        actions: [
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Get.off(()=>HomePage());
                },
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: ListView(
        children: [
          SafeArea(
            top: true,
            child: Container(
              color: Color(0xfff8fafc),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ReTextNormalSize(
                                    text: '2023/08/22',
                                    size: 11,
                                  ),
                                  SizedBox(width: 8),
                                  ReTextNormalSize(
                                    text: 'الثلاثاء',
                                    size: 11,
                                  ),
                                  SizedBox(width: 8),
                                  ReTextNormalSizeColor(
                                    text: ':تاريخ الإعلان',
                                    size: 11,
                                    color: Color(0xFF94A3B8),
                                  ),
                                ]),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 300,
                                  //  enlargeFactor: 2,
                                  viewportFraction: 1,
                                  // height: 100.0,
                                  autoPlay: true,
                                ),
                                itemCount: images.length,
                                itemBuilder: (context, itemIndex, realIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(images[itemIndex],
                                    fit: BoxFit.fill,
                                    width: w,
                                    ),
                                  );
                                },
                              ),
            
                             
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: ReSubTextSize(
                                  text: 'مزرعة',
                                  size: 12,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                child: ReTextNormalSize(
                                  text: 'مزرعة العبدلي للعائلات',
                                  size: 12,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ReTextNormalSize(
                                        text: 'م.ع',
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ReTextNormalSize(
                                        text: '12,500',
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ReSubTextSize(
                                        text: ':المساحة',
                                        size: 14,
                                      ),
                                    ]),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ReTextNormalSizeColor(
                                        text: 'صالة كبيرة + غرفة معيشة',
                                        size: 14,
                                        color: Colors.black,
                                      ),
                                      ReSubTextSize(
                                        text: ':المبنى الرئيسي',
                                        size: 14,
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ReSubTextSize(
                                        text: 'دينار كويتي',
                                        size: 14,
                                      ),
                                      SizedBox(width: 3,),
                                      ReTextNormalSize(
                                        text: '4600',
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  ReTextNormalSizeColor(
                                    text: '(أجهزة فقط بدون أواني)',
                                    size: 13,
                                    color: Color(0xFF0096D1),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFCBD5E1),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 6),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ReButton2(
                                    onPressed: () {},
                                    child:  Text(
                                         "حذف الإعلان",
                                       style: TextStyle( fontSize: 12,
                                       fontFamily: 'cairo',
                                        color: Colors.white)),
                                    color: red,
                                    height: 48,
                                    width: 106,
                                  ),
                                  ReButton2(
                                    onPressed: () {
                                      Get.off(()=>EditAds());
                                    },
                                    child: Text(
                                         "تعديل الإعلان",
                                       style: TextStyle( fontSize: 12,
                                       fontFamily: 'cairo',
                                        color: Colors.white)),
                                    color: grey,
                                    height: 48,
                                    width: 160,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
         SafeArea(
            top: true,
            child: Container(
              color: Color(0xfff8fafc),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ReTextNormalSize(
                                    text: '2023/08/22',
                                    size: 11,
                                  ),
                                  SizedBox(width: 8),
                                  ReTextNormalSize(
                                    text: 'الثلاثاء',
                                    size: 11,
                                  ),
                                  SizedBox(width: 8),
                                  ReTextNormalSizeColor(
                                    text: ':تاريخ الإعلان',
                                    size: 11,
                                    color: Color(0xFF94A3B8),
                                  ),
                                ]),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 300,
                                  //  enlargeFactor: 2,
                                  viewportFraction: 1,
                                  // height: 100.0,
                                  autoPlay: true,
                                ),
                                itemCount: images.length,
                                itemBuilder: (context, itemIndex, realIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(images[itemIndex],
                                    fit: BoxFit.fill,
                                    width: w,
                                    ),
                                  );
                                },
                              ),
            
                             
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: ReSubTextSize(
                                  text: 'مزرعة',
                                  size: 12,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                child: ReTextNormalSize(
                                  text: 'مزرعة العبدلي للعائلات',
                                  size: 12,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ReTextNormalSize(
                                        text: 'م.ع',
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ReTextNormalSize(
                                        text: '12,500',
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ReSubTextSize(
                                        text: ':المساحة',
                                        size: 14,
                                      ),
                                    ]),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ReTextNormalSizeColor(
                                        text: 'صالة كبيرة + غرفة معيشة',
                                        size: 14,
                                        color: Colors.black,
                                      ),
                                      ReSubTextSize(
                                        text: ':المبنى الرئيسي',
                                        size: 14,
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ReSubTextSize(
                                        text: 'دينار كويتي',
                                        size: 14,
                                      ),
                                      SizedBox(width: 3,),
                                      ReTextNormalSize(
                                        text: '4600',
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  ReTextNormalSizeColor(
                                    text: '(أجهزة فقط بدون أواني)',
                                    size: 13,
                                    color: Color(0xFF0096D1),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFCBD5E1),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 6),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ReButton2(
                                    onPressed: () {},
                                    child:  Text(
                                         "حذف الإعلان",
                                       style: TextStyle( fontSize: 12,
                                       fontFamily: 'cairo',
                                        color: Colors.white)),
                                    color: red,
                                    height: 48,
                                    width: 106,
                                  ),
                                  ReButton2(
                                    onPressed: () {
                                      Get.off(()=>EditAds());
                                    },
                                    child: Text(
                                         "تعديل الإعلان",
                                       style: TextStyle( fontSize: 12,
                                       fontFamily: 'cairo',
                                        color: Colors.white)),
                                    color: grey,
                                    height: 48,
                                    width: 160,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
