// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api
import 'package:almazr3a/views/components/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'categories.dart';
import 'components/text.dart';

class Advertisements extends StatefulWidget {
  const Advertisements({super.key});

  @override
  _AdvertisementsState createState() => _AdvertisementsState();
}

class _AdvertisementsState extends State<Advertisements> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:
        AppBar(
 backgroundColor: Colors.white,
    // flexibleSpace: Container(
    //   decoration: BoxDecoration(
    //       border: BorderDirectional(
    //           bottom: BorderSide(width: 3,)
    //           )
    //           ),
    // ),
    toolbarHeight: 80,
    title: Row(
      children: [
        IconButton(
            onPressed: () {
              Get.off(Categories());
            },
            icon: Icon(Icons.arrow_circle_right_outlined,
                size: 30, color: Colors.black)),
                SizedBox(width: 14,),
        ReTextNormalSize(text: "كهربائي",size: 14,),
        SizedBox(
          width: 50,
        ),
        ReTextSize(text: "العبدلي", size: 14),
      ],
    ),

        ), 
        // (myAppBarCText("كهربائي", "العبدلي")),
        // AppBar(
        //   flexibleSpace: Container(
        //     decoration: BoxDecoration(
        //       border: BorderDirectional(bottom: BorderSide(width: 3,color: Colors.green))
        //     ),
        //   ),
        //   toolbarHeight: 120,
        //   title: Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 10),
        //         child: Text("كهربائي"),
        //       ),
        //       SizedBox(width: 30,),
        //       Text("العبدلي"),
        //     ],
        //   ),
        //   centerTitle: true,
        // ),
        body: ListView(children: [
          SizedBox(
            height: 18,
          ),
          GreenCard(
            onTab: () {},
            image: "assets/elect.png",
            txtname: "سامي إبراهيم",
            txtdesc: "تركيب إنارة - تصليح اجهزة كهربائية -أعطال الكهرباء",
            txtprice: "2 دينار",
          ),
          SizedBox(
            height: 12,
          ),
          WhiteCard(
              onTab: () {
                
              },
              image: "assets/elect.png",
              txtname: "سامي إبراهيم",
              txtdesc: "تركيب إنارة - تصليح اجهزة كهربائية -أعطال الكهرباء",
              txtprice: "2 دينار"),
          SizedBox(
            height: 12,
          ),
          WhiteCard(
              onTab: () {},
              image: "assets/elect.png",
              txtname: "سامي إبراهيم",
              txtdesc: "تركيب إنارة - تصليح اجهزة كهربائية -أعطال الكهرباء",
              txtprice: "2 دينار"),
          SizedBox(
            height: 12,
          ),
          GoldenCard(
              image1: "assets/elect.png",
              image2: "assets/elect.png",
              image3: "assets/elect.png",
              image4: "assets/elect.png",
              txtname: "سامي إبراهيم",
              txtdesc: "تركيب إنارة - تصليح اجهزة كهربائية -أعطال الكهرباء",
              txtprice: "2 دينار",
              onTab: () {}),
          SizedBox(
            height: 12,
          ),
          WhiteCard(
              onTab: () {
                // print("object");
              },
              image: "assets/elect.png",
              txtname: "سامي إبراهيم",
              txtdesc: "تركيب إنارة - تصليح اجهزة كهربائية -أعطال الكهرباء",
              txtprice: "2 دينار"),
          SizedBox(
            height: 12,
          ),
          WhiteCard(
              onTab: () {
                // print("object");
              },
              image: "assets/elect.png",
              txtname: "سامي إبراهيم",
              txtdesc: "تركيب إنارة - تصليح اجهزة كهربائية -أعطال الكهرباء",
              txtprice: "2 دينار"),
        ]),
      ),
    );
  }
}
