
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
// import 'package:get/get.dart';

import 'text.dart';

class HomeCard3 extends StatelessWidget {
   HomeCard3({super.key,
   required this.name,
   required this.city,
   required this.image,
   required this.price,
   required this.onTap
   });
String name;
String image;
String city;
String price;
Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return 
     Stack(
       alignment: Alignment.center,
       children: <Widget>[
         InkWell(
           onTap: onTap,
           child: Container(
               decoration:
                   BoxDecoration(
               color: Colors.white),
               alignment: Alignment.center,
               // height: 240,
               
               child: Image.asset(
                   image,
                   fit: BoxFit.fill)),
         ),
         Padding(
           padding: EdgeInsets.all(8.0),
           child: Container(
             width: 138,
             height: 135,
             child: Column(
               mainAxisSize: MainAxisSize.max,
               // mainAxisAlignment: MainAxisAlign 
               children: [
                 Expanded(
                   child: Row(
                     crossAxisAlignment:
                         CrossAxisAlignment.end,
                     mainAxisAlignment:
                         MainAxisAlignment.end,
                     children: [
                       Icon(
                         Icons.favorite_outline,
                         color: Colors.white,
                         size: 25,
                       ),
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 50,
                 ),
                 Padding(
                   padding: EdgeInsets.symmetric(
                       horizontal: 3),
                   child: Column(
                     crossAxisAlignment:
                         CrossAxisAlignment.end,
                     mainAxisAlignment:
                         MainAxisAlignment.end,
                     children: [
                       Row(
                         // crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment:
                             MainAxisAlignment
                                 .spaceBetween,
                         children: [
                           ReTextRichSizeColor(
                             text: name,
                             size: 11,
                             color: Colors.white,
                           ),
                           //  SizedBox(width: 45),
                           ReTextRichSizeColor(
                             text: price,
                             size: 11,
                             color: Colors.white,
                           ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment:
                             MainAxisAlignment
                                 .spaceBetween,
                         children: [
                           Row(
                             children: [
                               Icon(
                                 Icons
                                     .location_on_outlined,
                                 color: Colors.white,
                                 size: 14,
                               ),
                               SizedBox(
                                 width: 3,
                               ),
                               ReTextNormalSizeColor(
                                 text: city,
                                 size: 8,
                                 color: Colors.white,
                               ),
                             ],
                           ),
                           SizedBox(
                             width: 15,
                           ),
                           ReTextNormalSizeColor(
                             text: "دينار كويتي",
                             size: 8,
                             color: Colors.white,
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ],
             ),
                              ),
                            )
                          ],
                        );
  }
}