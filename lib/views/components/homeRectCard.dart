// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable, file_names

import 'package:flutter/material.dart';

import 'buttons.dart';
import 'colors.dart';
import 'text.dart';

class HomeRectCard extends StatelessWidget {
  HomeRectCard({super.key,
  required this.image,
  required this.text,
  required this.onTab,
  required this.btnName,
  });
 String image;
 String text;
 String btnName;
 Function() onTab;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return  Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Container(
                    height: 70,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.green, strokeAlign: 0.6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              // SizedBox(width: 4,),
                              Image.asset(
                                image,
                                // "assets/images/box.png",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ReTextNormalSize(
                                  text: text, size: 12),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Button(
                            padding:  EdgeInsets.only( top: 9.5 , bottom: 9.5 , left: 10 , right: 40),
                              width: 122 ,
                              height: 35 ,
                              color: green,
                              route: onTab,
                              txt: btnName,
                              txtColor: Colors.white,
                              shadowColor: Colors.black),
                        ),
                      ],
                    ),
                  ),
                );
  }
}