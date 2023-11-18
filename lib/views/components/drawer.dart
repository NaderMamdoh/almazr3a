// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:almazr3a/views/callus.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:almazr3a/views/flutterflow/my_ads.dart';
import 'package:almazr3a/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

import '../categories.dart';
import '../favorite.dart';
import '../inbox.dart';
import '../profile.dart';
import 'text.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(76, 36, 156, 254),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 85, 156, 184),
                ),
                accountName: ReTextSize(
                  text: "Nader Mamdouh",
                  size: 18,
                ),
                accountEmail: Text("NaderMamdouh@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(0, 212, 221, 209),
                  child: Text(
                    "N",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person_outline_outlined),
              title: const Text('حسابي'),
              onTap: () {
                // Get.to(SelectSuggestions());
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text('المفضلة'),
              onTap: () {
                Get.off(Favorite());
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_comment_outlined),
              title: const Text('كتابة اقتراح'),
              onTap: () {
                Get.to(Categories());
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_none_outlined),
              title: const Text('الإشعارات'),
              onTap: () {
                // Get.to(SelectSuggestions());
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_none_outlined,
                  color: Colors.green),
              title: const Text(
                'إتصل بنا',
                style: TextStyle(color: Colors.green),
              ),
              onTap: () {
                // Get.to(SelectSuggestions());
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_rounded, color: Colors.red),
              title: const Text(
                'تسجيل الخروج',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                // Get.to(SelectSuggestions());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomDrawer extends StatefulWidget {
  const MyCustomDrawer({super.key});

  @override
  State<MyCustomDrawer> createState() => _MyCustomDrawerState();
}

class _MyCustomDrawerState extends State<MyCustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xfff8fafc),
              ), //BoxDecoration
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    "assets/Hprofile.png",
                    width: 50,
                    height: 50,
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ReTextRichSize(text: "أحمد سامي", size: 12),
                      SizedBox(
                        width: 10,
                      ),
                   SizedBox( 
                   width: 20 , 
                   height: 20, 
                   child: SvgPicture.asset("assets/logo/useredit.svg" , 
                   color: green,)),
                    ],
                  )
                ],
              ),
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/logo/userd.svg" , color: black,),
              title:  ReTextNormalSize( text: 'حسابي',size: 12),
              onTap: () {
                Get.off(()=>Profile());
              },
            ),  
            ListTile(
              leading: SvgPicture.asset("assets/logo/userd.svg" , color: black,),
              title:  ReTextNormalSize( text: 'إعلاناتي',size: 12),
              onTap: () {
                Get.off(()=>MyAds());
              },
            ), 
            ListTile(
              leading: SvgPicture.asset("assets/logo/heart.svg" , color: black,),
              title: ReTextNormalSize( text:'المفضلة',size: 12),
              onTap: () {
                Get.off(()=>Favorite());
              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/logo/cat.svg" , color: black,),
              title: ReTextNormalSize( text:'الاقسام',size: 12),
              onTap: () {
                Get.off(()=>Categories());
              },
            ),
            // ListTile(
            //   leading: const Icon(Icons.add_comment_outlined),
            //   title: const Text('كتابة اقتراح'),
            //   onTap: () {
            //     Get.to(Categories());
            //   },
            // ),
            ListTile(
              leading: SvgPicture.asset("assets/logo/noti.svg" , color: black,),
              title: ReTextNormalSize( text:'الإشعارات',size: 12),
              onTap: () {
                Get.off(()=>InBox());
              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/logo/callus.svg" ,
                  color: Colors.green),
              title: const Text(
                'إتصل بنا',
                style: TextStyle(color: Colors.green, fontSize: 12 , fontFamily: 'cairo'),
              ),
              onTap: () {
                Get.off(()=>CallUs());
              },
            ),
            SizedBox(height: 244,),
            ListTile(
              leading: const Icon(Icons.logout_rounded, color: Colors.red),
              title: const Text(
                'تسجيل الخروج',
                style: TextStyle(color: Colors.red, fontSize: 12 , fontFamily: 'cairo'),
              ),
              onTap: () {
                Get.offAll(()=>LoginScreen());
              },
              
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
