// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:almazr3a/views/advertisements.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

import 'HPbotBar.dart';
import 'components/card.dart';
import 'components/text.dart';
import 'search.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 90,
            title: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.off(()=>HomePage());
                              },
                              icon: Icon(Icons.arrow_circle_right_outlined,
                                  size: 30, color: Colors.black)),
                          ReTextNormalSize(text: "الأقسام", size: 14,),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Get.to(Search());
                        },
                       icon: SvgPicture.asset("assets/logo/searchn.svg" , 
                              // ignore: deprecated_member_use
                              color: black,
                              height: 24,
                        ),
                      ),
                    ]),
                Divider()
              ],
            ),
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 4,
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                labelColor: black,
                labelStyle: TextStyle(
                    fontFamily: 'cairo',
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
                isScrollable: true,
                indicatorColor: green,
                labelPadding: EdgeInsets.symmetric(horizontal: 27),
                tabs: [
                  Tab(
                    child: Center(
                        child: Text(
                      "الكل",
                    )),
                  ),
                  Tab(
                    child: Center(child: Text("متاجر")),
                  ),
                  Tab(
                    child: Center(child: Text("خدمات")),
                  ),
                  Tab(
                    child: Center(child: Text("مزارع وإستراحات")),
                  )
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GridView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 10,
                    crossAxisCount: 3),
                children: <Widget>[
                  CustomCard2png(
                    image: "assets/pics/veg_fruits.png",
                    route: () {
                      Get.off(Advertisements());
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
                ]),
          ),
        ),
      ),
    );
  }
}
