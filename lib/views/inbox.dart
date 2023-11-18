// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:almazr3a/views/components/card.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HPbotBar.dart';
import 'components/text.dart';
import 'details.dart';

class InBox extends StatefulWidget {
  const InBox({super.key});

  @override
  _InBoxState createState() => _InBoxState();
}

class _InBoxState extends State<InBox> {



  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar:   AppBar(
    // flexibleSpace: Container(
    //   decoration: BoxDecoration(
    //       border: BorderDirectional(
    //           bottom: BorderSide(width: 3,)
    //           )
    //           ),
    // ),
     backgroundColor: Colors.white,
    toolbarHeight: 80,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                   Get.off(HomePage());
                },

                icon: Icon(Icons.arrow_circle_right_outlined,
                    size: 30, color: Colors.black)
                    ),
                    SizedBox(width: 30,),
            ReTextNormalSizeColor(text: "الإشعارات",size: 14,color: black),
          ],
        ),

        Row(
          children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: ReTextNormalSizeColor(text: "حذف",size: 14,color: red)),
              ),
              SizedBox(width: 20,),
               IconButton(
                onPressed: () {
                  
                },

                icon: Icon(Icons.more_vert,
                    size: 25, color: Colors.black)
                    ),
          ],
        )
      ],
    ),),
          body: SizedBox(
            height: h,
            child: ListView(
              children: [
                NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proBgirl.png",width: 70,height: 70,), 
                  txt1: "مزرعة بالعبدلي", 
                  txt2: "تم النشر اليوم", 
                  txt3: "مزرعة دار امي نورا", 
                  icon: Icon( CupertinoIcons.back),
                  richtxt4: "موقع متميز في العبدلي والتأجير فقط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){
                    Get.off(() =>Details());
                  }),

                NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proGirl.png",width: 70,height: 70,), 
                 txt1: "مزرعة بالعبدلي", 
                  txt2: "تم النشر اليوم", 
                  txt3: "مزرعة دار امي نورا", 
                  icon: Icon( CupertinoIcons.back),
                  richtxt4: "موقع متميز في العبدلي والتأجير غفط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){
                    Get.off(() =>Details());
                  }),

                NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proKid.png",width: 70,height: 70,), 
                  txt1: "مزرعة بالعبدلي", 
                  txt2: "تم النشر اليوم", 
                  txt3: "مزرعة دار امي نورا",
                  icon: Icon( CupertinoIcons.back), 
                  richtxt4: "موقع متميز في العبدلي والتأجير غفط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){
                    Get.off(() =>Details());
                  }),

                NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proZingya.png",width: 70,height: 70,), 
                  txt1: "مزرعة بالعبدلي", 
                  txt2: "تم النشر اليوم", 
                  txt3: "مزرعة دار امي نورا", 
                  icon: Icon( CupertinoIcons.back),
                  richtxt4: "موقع متميز في العبدلي والتأجير غفط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){
                    Get.off(() =>Details());
                  }),

                NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proZingy.png",width: 70,height: 70,), 
                  txt1: "مزرعة بالعبدلي", 
                  txt2: "تم النشر اليوم", 
                  txt3: "مزرعة دار امي نورا", 
                  icon: Icon( CupertinoIcons.chevron_back),
                  richtxt4: "موقع متميز في العبدلي والتأجير غفط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){
                    Get.off(() =>Details());
                  }),

                NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proHindi.png",width: 70,height: 70,), 
                  txt1: "مزرعة بالعبدلي", 
                  txt2: "تم النشر اليوم", 
                  txt3: "مزرعة دار امي نورا", 
                  icon: Icon( CupertinoIcons.back),
                  richtxt4: "موقع متميز في العبدلي والتأجير غفط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){}),
                  
                  NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proHindi.png",width: 70,height: 70,), 
                  txt1: "مزرعة بالعبدلي", 
                  txt2: "منذ 3 ساعات",
                  txt3: "مزرعة دار امي نورا", 
                  icon: Icon( CupertinoIcons.back),
                  richtxt4: "موقع متميز في العبدلي والتأجير غفط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){
                    Get.off(() =>Details());
                  }),
                  
                  NotifiCard2(
                  color: Color(0xFFFFFFFF),
                  widget: Image.asset("assets/logo/proHindi.png",width: 70,height: 70,), 
                  txt1: "مزرعة بالعبدلي", 
                  txt2: "منذ 3 ساعات", 
                  txt3: "مزرعة دار امي نورا", 
                  icon: Icon( CupertinoIcons.back),
                  richtxt4: "موقع متميز في العبدلي والتأجير غفط للعائلات مساحة المزرعة 12500 ألف مزرعة متكاملة المبنى الرئيسي : صالة كبيرة + غرفة قعدة عائلية", 
                  ontap: (){
                    Get.off(() =>Details());
                  }),
                ]
              ),
            ),
          ),
        );
      }
}