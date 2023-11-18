// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, avoid_print
import 'package:almazr3a/views/add_ads.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:almazr3a/views/components/drawer.dart';
import 'package:almazr3a/views/components/homeRectCard.dart';
import 'package:almazr3a/views/department.dart';
import 'package:almazr3a/views/inbox.dart';
import 'package:almazr3a/views/resturants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../addSuggestions.dart';
import 'advertisements.dart';
import 'categories.dart';
import 'components/buttons.dart';
import 'components/card.dart';
import 'components/figmacard.dart';
import 'components/text.dart';
import 'details.dart';
import 'profile.dart';
import 'search.dart';
import 'dart:async';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>  with WidgetsBindingObserver {
  // final keyfirstLoad="loaded before";
  
          
     
 String buttonText = 'check keys';
 List logoutKeys = ['key_data'];
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("State of APP : $state");

    if (state == AppLifecycleState.detached) {
      // _notification = state;
      // setState(() {});
      appClose().then((value) {
        print(" successfully done");
        
      }); 
    }
  }
@override
void initState() {
  super.initState();
  WidgetsBinding.instance.addObserver(this);
}
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

   appClose() async {
    for (final key in logoutKeys) {
      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      print("Contains Keys : ${sharedPrefs.getKeys()}");
      print("checking for  key : $key");
      if (sharedPrefs.containsKey(key)) {
        try {
          await sharedPrefs.remove(key);
          print("Removed key : $key ");
          print("Current Keys : ${sharedPrefs.getKeys()}");
        } catch (err) {
          err.toString();
        }
      } else {
        print("No key : $key");
      }
    }
  }

showDialogIfFirstLoaded(BuildContext context) async {
  
    SharedPreferences prefs= await SharedPreferences.getInstance();
      bool ?isLoaded = prefs.getBool(buttonText);
      if (isLoaded == null) {
      showDialog(
        
          context: context,
          builder: (BuildContext context) =>  AlertDialog(
            
                contentPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                content: Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: Column(
                      children: [
                        Expanded(child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Get.off(()=>Details());
                            },
                            child: Image.asset("assets/images/popup.png")),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Button3(
                          color: green,
                          route: () {
                            Navigator.pop(context);
                            prefs.setBool(buttonText, false);
                          },
                          txt: "تخطي",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )),
              ));
      } }
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     SharedPreferences prefs= await SharedPreferences.getInstance();
  //     bool ?isLoaded = prefs.getBool(keyfirstLoad);
  //     if (isLoaded == null) {
        
      
  //     showDialog(
        
  //         context: context,
  //         builder: (BuildContext context) =>  AlertDialog(
            
  //               contentPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.all(Radius.circular(32.0))),
  //               content: Container(
  //                   height: MediaQuery.of(context).size.height / 1.5,
  //                   child: Column(
  //                     children: [
  //                       Expanded(child: Image.asset("assets/images/popup.png")),
  //                       SizedBox(
  //                         height: 10,
  //                       ),
  //                       Button3(
  //                         color: green,
  //                         route: () {
  //                           Navigator.pop(context);
  //                           prefs.setBool(keyfirstLoad, false);
  //                         },
  //                         txt: "تخطي",
  //                       ),
  //                       SizedBox(
  //                         height: 30,
  //                       ),
  //                     ],
  //                   )),
  //             ));
  //     } 

  //   });
  // }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // int selectedindex = 0 ;
    double w = MediaQuery.of(context).size.width;


   
Future.delayed(Duration.zero, ()=> showDialogIfFirstLoaded(context));
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
      length: 4,
      child: Scaffold(
        key: scaffoldKey,
        
        appBar: AppBar(
          iconTheme: IconThemeData(color: black),
          backgroundColor: Colors.white,
          toolbarHeight: 90,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.off(() =>Profile());
                      },
                      child: Image.asset(
                        "assets/Hprofile.png",
                        width: 32,
                        height: 32,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ReTextNormalSize(text: 'مرحبا', size: 11),
                    SizedBox(
                      width: 3,
                    ),
                    ReTextNormalSize(text: 'أحمد', size: 11),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(() =>Search());
                        },
                        icon: SvgPicture.asset("assets/logo/searchn.svg" , 
                          // ignore: deprecated_member_use
                          color: black,
                          height: 24,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {
                        Get.off(() =>InBox());
                      },
                      icon: SvgPicture.asset("assets/logo/noti.svg" , 
                        // ignore: deprecated_member_use
                        color: black,
                        height: 24,
                      ))
                ],
              ),
            )
          ],
        ),
        
          bottom: TabBar(
          //vertical >> |
          //Horizontal >> -
          // padding: EdgeInsets.symmetric(vertical: 2,),
          // // indicatorPadding: EdgeInsets.zero,
          // labelPadding: EdgeInsets.only,
          isScrollable: false,
          indicatorColor: green,
          indicatorWeight: 3,
          tabs: [
            Tab(
              child: ReTextNormalSize(text: 'الرئيسة', size: 14),),
            Tab(
              child: ReTextNormalSize(text: 'العبدلي', size: 14),),
            Tab(
              child: ReTextNormalSize(text: "الوفرة" , size: 14),),
            Tab(
              child: ReTextNormalSize(text: 'شاليهات', size: 14),),
          ]),
          ),
         endDrawer: MyCustomDrawer(),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
              children: [
///////////
              /// الرئيسية
///////////
    ListView(
      children: [    
      SizedBox(height: 20,),
      HomeRectCard(
      image: "assets/images/shootout.png", 
      text: "انشر إعلانك هنا الأن", 
      onTab: () {
       Get.off(() =>AddAds());
      }, 
      btnName: "أضف إعلانك"),
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        child: Column(
          children: [
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               ReTextNormalSize(text: "تصفح بالأقسام", size: 12),
               ReTextButtonNoUnderlineSize(
                 size: 10,
                   text: "عرض المزيد",
                   onpressed: () {
                     Get.off(() =>Categories());
                   }),
                ]),
               
           ],
        ),
        ),

              Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     CustomCard(
                       color: Color(0xFFffeded),
                       route: () {
                         Get.off(() =>Restaurants());
                       },
                       title: "مطاعم",
                       image: "assets/pics/food.svg",
                     ),
                   
                     CustomCard(
                       color: Color(0x4F5FCFFF),
                       route: () {},
                       title: "صيدليات",
                       image: "assets/pics/pharmacy.svg",
                     ),
                     
                     CustomCard(
                       color: Color.fromARGB(42, 32, 197, 40),
                       route: () {},
                       title: "بقالة",
                       image: "assets/pics/groceries.svg",
                     ),
                     
                     CustomCard(
                       color: Color.fromARGB(47, 124, 80, 57),
                       route: () {},
                       title: "كافيهات",
                       image: "assets/cafe.svg",
                     ),
                   ],
                 ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6, 31, 6, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReTextNormalSize(
                        text: "أكثر الإعلانات مشاهدة (العبدلي)",
                        size: 12,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Container(
                    height: w / 3,
                    child: ListView(
                      
                      scrollDirection: Axis.horizontal,
                      children: [

                       HomeCard(
                        name: "خيرات العبدلي", 
                        city: "العبدلي", 
                        image: "assets/images/5yrat.png", 
                        price: "15", 
                        onTap: (){Get.off(() =>Department());}),
                          SizedBox(width: 8,),
                       HomeCard(
                        name: "فني كهربائي", 
                        city: "العبدلي", 
                        image: "assets/images/fnykhrba.png", 
                        price: "4300", 
                        onTap: (){Get.off(() =>Department());}),
                        SizedBox(width: 8,),
                        HomeCard(
                        name: "فني صحي", 
                        city: "العبدلي", 
                        image: "assets/images/fnykhrba.png", 
                        price: "4300", 
                        onTap: (){Get.off(() =>Department());}),
                    
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 23, 0, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReTextNormalSize(
                        text: "مزارع للإيجار",
                        size: 12,
                      )
                    ],
                  ),
                ),
                Container(
                  height: w / 3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: HomeCard(
                        name: "مزرعة للعائلات", 
                        city: "العبدلي", 
                        image: "assets/images/mazare3.png", 
                        price: "4300", 
                        onTap: (){Get.off(() =>Details());}),
                      );
                      
                    },
                )
                ),
          
              
            
        
          SizedBox(
            height: 13,
          ),
         HomeRectCard(
          image: "assets/images/box.png", 
          text: "ساعدنا على تطوير خدماتنا", 
          onTab: () {
            Get.to(()=>Suggestions());
          }, 
          btnName: "أضف مقترحاتك")
       ] ),





///////////
   /// العبدلي
///////////




  Padding(
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
                      Get.off(()=>Advertisements());
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
            //   ListView(children: [
            //      SizedBox(height: 20,),
            //      HomeRectCard(
            //     image: "assets/images/shootout.png", 
            //     text: "انشر إعلانك هنا الأن", 
            //     onTab: () {
            //       Get.off(() =>AddAds());
            //     }, 
            //     btnName: "أضف إعلانك"),
             
            //     Padding(
            //       padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            //       child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //               ReTextNormalSize(text: "تصفح بالأقسام", size: 12),
            //               ReTextButtonNoUnderlineSize(
            //                 size:10, 
            //                 text: "عرض المزيد",
            //                 onpressed: () {
            //                   Get.off(() =>Categories());
            //                 }),
            //           ]),
            //     ),
            //     Row(
            //                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                  children: [
            //                    CustomCard(
            //                      color: Color(0xFFffeded),
            //                      route: () {
            //                        Get.off(() =>Restaurants());
            //                      },
            //                      title: "مطاعم",
            //                      image: "assets/pics/food.svg",
            //                    ),
                               
            //                    CustomCard(
            //                      color: Color(0x4F5FCFFF),
            //                      route: () {},
            //                      title: "صيدليات",
            //                      image: "assets/pics/pharmacy.svg",
            //                    ),
                               
            //                    CustomCard(
            //                      color: Color.fromARGB(42, 32, 197, 40),
            //                      route: () {},
            //                      title: "بقالة",
            //                      image: "assets/pics/groceries.svg",
            //                    ),
                               
            //                    CustomCard(
            //                      color: Color.fromARGB(47, 124, 80, 57),
            //                      route: () {},
            //                      title: "كافيهات",
            //                      image: "assets/cafe.svg",
            //                    ),
            //                  ],
            //                ),
            //     Padding(
            //       padding: EdgeInsetsDirectional.fromSTEB(6, 31, 6, 8),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           ReTextNormalSize(
            //             text: "أكثر الإعلانات مشاهدة (الوفرة)",
            //             size: 12,
            //           )
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsetsDirectional.fromSTEB(10, 0, 6, 0),
            //       child: Container(
            //         height: w / 3,
            //         child: ListView(
            //           scrollDirection: Axis.horizontal,
            //           children: [
            //             HomeCard(
            //             name: "خيرات الوفرة", 
            //             city: "الوفرة", 
            //             image: "assets/images/5yrat.png", 
            //             price: "4300", 
            //             onTap: (){Get.off(() =>Department());}),
            //              SizedBox(width: 8,),
            //             HomeCard(
            //             name: "فني كهربائي", 
            //             city: "الوفرة", 
            //             image: "assets/images/fnykhrba.png", 
            //             price: "4300", 
            //             onTap: (){Get.off(() =>Department());}),
            //             SizedBox(width: 8,),
            //             HomeCard(
            //             name: "فني صحي", 
            //             city: "الوفرة", 
            //             image: "assets/images/fnykhrba.png", 
            //             price: "4300", 
            //             onTap: (){Get.off(() =>Department());}),
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsetsDirectional.fromSTEB(4, 23, 0, 12),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           ReTextNormalSize(
            //             text: "مزارع للإيجار",
            //             size: 12,
            //           )
            //         ],
            //       ),
            //     ),
            //     Container(
            //       height: w / 3,
            //       child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: 3,
            //         itemBuilder: (context, index) {
            //           return  Padding(
            //             padding: EdgeInsetsDirectional.fromSTEB(8,0,0,0),
            //             child: HomeCard(
            //             name: "مزرعة للعائلات", 
            //             city: "الوفرة", 
            //             image: "assets/images/mazare3.png", 
            //             price: "4300", 
            //             onTap: (){Get.off(() =>Details());}),
            //           );
                      
            //         },
            //     )
            //     ),
            //      SizedBox(
            //       height: 13,
            //     ),
            //      HomeRectCard(
            //     image: "assets/images/box.png", 
            //     text: "ساعدنا على تطوير خدماتنا", 
            //     onTab: () {
            //       // Get.to(AddAds());
            //     }, 
            //     btnName: "أضف مقترحاتك"),
            //  ] ),







///////////
              /// الوفرة
///////////











Padding(
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
                      Get.off(()=>Advertisements());
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









///////////
              /// شاليهات
///////////








Padding(
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
                      Get.off(()=>Advertisements());
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



              ]),
            ),
          )
    );
  }
}
