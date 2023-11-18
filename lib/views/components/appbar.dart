// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'text.dart';

PreferredSizeWidget myAppBar(String text, Function()? onPressed) {
  return AppBar(
    backgroundColor: Colors.white,

    toolbarHeight: 80,
    title: Row(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_circle_right_outlined,
                size: 40, color: Colors.black)),
        ReText(text: text),
      ],
    ),

    // centerTitle: true,
  );
}

//--------------------------
//AppBar With Leading
//--------------------------
PreferredSizeWidget myAppBarLeading(
    String text, Function()? onPressed, Icon icon) {
  return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
      backgroundColor: Colors.white,
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //       border: BorderDirectional(
      //           bottom: BorderSide(width: 3, color: Colors.green))),
      // ),
      toolbarHeight: 80,
      title: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_circle_right_outlined,
                  size: 40, color: Colors.black)),
          ReText(text: text),
        ],
      ));
}

//--------------------------
//AppBar With action
//--------------------------
PreferredSizeWidget myAppBarAction(
    String text, Function()? onPressed, Icon icon) {
  return AppBar(
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: IconButton(
      //       onPressed: onPressed,
      //       icon: icon,
      //     ),
      //   ),
      // ],
      backgroundColor: Colors.white,
      
      toolbarHeight: 80,
      title: Row(
        children: [
          IconButton(
              onPressed: () {
                onPressed;
              },
              icon: icon,
                 ),
          ReText(text: text),
        ],
      ));
}

PreferredSizeWidget myAppBarActionIcon(
    String text, Function()? onPressed, Icon icon) {
  return AppBar(
      backgroundColor: Colors.white,

      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //       border: BorderDirectional(
      //           bottom: BorderSide(width: 0,))
      //           ),
      // ),
      toolbarHeight: 80,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                onPressed;
              },
              icon: icon),
          SizedBox(width: 20),
          ReText(text: text),
        ],
      ));
}

PreferredSizeWidget myAppBarCText(
  String text,
  String city,
) {
  return AppBar(
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
              Get.back();
            },
            icon: Icon(Icons.arrow_circle_right_outlined,
                size: 40, color: Colors.black)),
        ReText(text: text),
        SizedBox(
          width: 50,
        ),
        ReTextSize(text: city, size: 18),
      ],
    ),

    // centerTitle: true,
  );
}
