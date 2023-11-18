// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables


import 'package:almazr3a/views/searchnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'add_ads.dart';
import 'categories.dart';
import 'components/colors.dart';
import 'home.dart';

 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  
 
   @override
   State<HomePage> createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
   
   int index = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();




  @override
  Widget build(BuildContext context) {
   

 final screen = [
    
     Home(),
     Categories(),
     SearchNav(),
     AddAds(),
   ]; 
  // final  items = <Widget>[
         

          // ];

    return 
    Directionality(textDirection: TextDirection.rtl,
      child: SafeArea(

        top: false,
        child: 
      Scaffold(
        
        extendBody: true,
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(top: 8),
            height: 87,
            child: BottomNavigationBar(
              
              showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(  fontFamily: 'cairo'),
                   //  animationDuration: Duration(microseconds: 300),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              selectedItemColor: green,
              unselectedItemColor: grey,
              currentIndex: index,
              selectedLabelStyle: TextStyle(  fontFamily: 'cairo'),
              
              items:      
              [ 
                 BottomNavigationBarItem(
                     icon: Image.asset("assets/logo/nav2.png",) ,
                     label: "الرئيسية",
                     backgroundColor: Colors.white),
                 BottomNavigationBarItem(
                     icon: SvgPicture.asset("assets/logo/cat.svg",) ,
                     label: "الأقسام"),
                 BottomNavigationBarItem(
                     icon: SvgPicture.asset("assets/logo/search.svg"),
                     label: "البحث"),
                 BottomNavigationBarItem(
                     icon: SvgPicture.asset("assets/logo/add.svg"),
                     label: "اضف إعلانك")
              ],
              onTap: (index) {
              setState(() {
              this.index = index;
              });
             },
            ),
          ),
          body: screen[index],
         )   
       ),
    );
  }
  }