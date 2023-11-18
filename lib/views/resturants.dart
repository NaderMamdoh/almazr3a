// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:almazr3a/views/HPbotBar.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:almazr3a/views/rest_details.dart';
import 'package:almazr3a/views/search.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'components/text.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  String _value = 'العبدلي';


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.off(()=>HomePage());
                      },
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 30,
                        color: black,
                      ),
                    ),
                    SizedBox(width: 14),
                    ReTextNormalSize(text: "مطاعم",size:14),
                    SizedBox(
                      width: 150,
                      height: 100,
                      child: Center(
                        child: DropdownButton<String>(
                          value: _value,
                          items: <DropdownMenuItem<String>>[
                            DropdownMenuItem(
                              value: 'العبدلي',
                              child: ReTextSize(
                                text: 'العبدلي',
                                size: 14,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'الوفرة',
                              child: ReTextSize(
                                text: 'الوفرة',
                                size: 14,
                              ),
                            ),
                          ],
                          onChanged: (String? value) {
                            setState(() => _value = value!);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Get.to(Search());
                  },
                  icon: SvgPicture.asset("assets/logo/searchn.svg",
                  height: 25,
                  )
                ),
              ],
            )),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: w,
                  height: 140,
                  color: lightgrey,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 14, 8, 14),
                    child: InkWell(
                      onTap:() {Get.to(RestDetails());},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/rest.png"),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReTextNormalSize(
                                text: "مطعم دجاج بروست",
                                size: 12,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ReTextRichSize(
                                text: "دجاج مقلي-وجبات عائلية-استربس",
                                size: 11,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  ReTextSize(
                                    text: "40m : 70m",
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(Icons.access_time,
                                      size: 20, color: black)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
