// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeCard extends StatelessWidget {
   HomeCard({super.key,
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
    
    return  Stack(
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
                   width: 138,
             height: 135,
                   fit: BoxFit.fill)),
         ),
         Padding(
           padding: EdgeInsets.all(4.0),
           child: SizedBox(
             width: 138,
             height: 135,
             child: Column(
             
               
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 8),
                   child: Row(
                     crossAxisAlignment:
                         CrossAxisAlignment.end,
                     mainAxisAlignment:
                         MainAxisAlignment.end,
                     children: [
                      SvgPicture.asset("assets/logo/heart.svg",
                      width: 25,
                      color: Colors.white,)
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 40,
                 ),
                 Padding(
                   padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 5),
                   child: Column(
                     crossAxisAlignment:
                         CrossAxisAlignment.end,
                     mainAxisAlignment:
                         MainAxisAlignment.end,
                     children: [
                       Row(
                         
                         mainAxisAlignment:
                             MainAxisAlignment.spaceBetween,
                         children: [
                           Text(
                              name,
                              style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'cairo',
                            fontWeight: FontWeight.bold,
                             color: Colors.white,),
                           ),
                           //  SizedBox(width: 45),
                          Text(
                              price,
                              style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'cairo',
                            fontWeight: FontWeight.w600,
                             color: Colors.white,),
                             
                           ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment:
                             MainAxisAlignment.spaceBetween,
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
                                Text(
                              city,
                              style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'cairo',
                            fontWeight: FontWeight.w300,
                             color: Colors.white,),)
                             ],
                           ),
                           SizedBox(
                             width: 15,
                           ),
                           Text(
                               "دينار كويتي",
                              style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'cairo',
                            fontWeight: FontWeight.w300,
                             color: Colors.white,),
                             
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