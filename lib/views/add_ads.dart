// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:almazr3a/views/HPbotBar.dart';
import 'package:almazr3a/views/make_ads.dart';
import 'package:almazr3a/views/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'components/card.dart';
import 'components/colors.dart';
import 'components/text.dart';

class AddAds extends StatefulWidget {
  const AddAds({super.key});

  @override
  State<AddAds> createState() => _AddAdsState();
}

class _AddAdsState extends State<AddAds> {
  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          //   toolbarHeight: 90,
          //   title: Column(
          //     children: [
          //       Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Row(
          //               children: [
          //                 IconButton(
          //                     onPressed: () {
          //                       Get.off(Home());
          //                     },
          //                     icon: Icon(Icons.arrow_circle_right_outlined,
          //                         size: 40, color: Colors.black)),
          //                 ReText(text: "إضافة إعلان"),
          //               ],
          //             ),
          //             IconButton(
          //               onPressed: () {

          //               },
          //               icon: Icon(
          //                 Icons.search,
          //                 size: 35,
          //                 color: black,
          //               ),
          //             ),
          //           ]),
          //     ],
          //   ),
          // ),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
             margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: grey,
                offset: Offset(0, 1.5),
                blurRadius: 1,
              )]
            ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Get.off(HomePage());
                                          },
                                          icon: Icon(
                                              Icons.arrow_circle_right_outlined,
                                              size: 30,
                                              color: Colors.black)),
                                              SizedBox(width: 14,),
                                      ReTextNormalSize(text: "إضافة إعلان",
                                      size: 14,),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Get.to(()=>Search());
                                    },
                                    icon: SvgPicture.asset("assets/logo/searchn.svg",height: 25,)
                                    // Icon(
                                    //   Icons.search,
                                    //   size: 30,
                                    //   color: black,
                                    // ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: ReTextNormalSize(
                          text: "أختر نوع الخدمة التي تقدمها", size: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: SizedBox(
                        height: h / 9,
                        child: ListView(
                          itemExtent: 100,
                          // shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: CustomCard2png(
                                image: "assets/logo/kahrba2y.png",
                                route: () {
                                  Get.off(()=>MakeAds());
                                },
                                title: "كهربائي",
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: CustomCard2png(
                                image: "assets/logo/7adad.png",
                                route: () {
                                  Get.off(()=>MakeAds());
                                },
                                title: "حداد",
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: CustomCard2png(
                                image: "assets/logo/na2a4.png",
                                route: () {
                                  Get.off(MakeAds());
                                },
                                title: "نقاش",
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: CustomCard2png(
                                image: "assets/logo/sabak.png",
                                route: () {
                                  Get.off(MakeAds());
                                },
                                title: "سباك",
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: CustomCard2png(
                                image: "assets/logo/sabak.png",
                                route: () {
                                  Get.off(MakeAds());
                                },
                                title: "سباك",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: Column(
                        children: [
                          ReTextNormalSize(text: "إعلان عن", size: 13),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h / 1.5,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: GridView(
                            physics: BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 2,
                                    crossAxisSpacing: 10,
                                    crossAxisCount: 3),
                            children: <Widget>[
                              CustomCard2png(
                                image: "assets/pics/veg_fruits.png",
                                route: () {
                                  Get.off(()=>MakeAds());
                                },
                                title: "خضراوات",
                                // txtColor: Colors.black,
                                // iconColor: Colors.black
                              ),
                              CustomCard2png(
                                image: "assets/rest.png",
                                route: () {},
                                title: "مطاعم",
                              ),
                              CustomCard2png(
                                image: "assets/images/cafehat.png",
                                route: () {},
                                title: "كافيهات",
                              ),
                              CustomCard2png(
                                image: "assets/images/alban.png",
                                route: () {},
                                title: "البان",
                              ),
                              CustomCard2png(
                                image: "assets/images/masabe7.png",
                                route: () {},
                                title: "مسابح",
                              ),
                              CustomCard2png(
                                image: "assets/images/be2ala.png",
                                route: () {},
                                title: "بقالة",
                              ),
                              CustomCard2png(
                                image: "assets/images/kahrba2y.png",
                                route: () {},
                                title: "كهربائي",
                              ),
                              CustomCard2png(
                                image: "assets/images/se7y.png",
                                route: () {},
                                title: "صحي",
                              ),
                              CustomCard2png(
                                image: "assets/images/me2awlat.png",
                                route: () {},
                                title: "مقاولات",
                              ),
                              CustomCard2png(
                                image: "assets/images/saydalya.png",
                                route: () {},
                                title: "صيدليات",
                              ),
                              CustomCard2png(
                                image: "assets/images/al3ab.png",
                                route: () {},
                                title: "العاب",
                              ),
                              CustomCard2png(
                                image: "assets/images/ma4atel.png",
                                route: () {},
                                title: "مشاتل",
                              ),
                              CustomCard2png(
                                image: "assets/images/ne2a4a.png",
                                route: () {},
                                title: "نقاشة",
                              ),
                              CustomCard2png(
                                image: "assets/images/7adad.png",
                                route: () {},
                                title: "حداد",
                              ),
                              CustomCard2png(
                                image: "assets/images/baitry.png",
                                route: () {},
                                title: "بيطري",
                              ),
                                SizedBox(height: 20,)
                            ]),
                      ),
                    ),
                  
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
