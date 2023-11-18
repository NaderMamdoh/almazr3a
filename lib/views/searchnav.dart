// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:almazr3a/views/components/colors.dart';
import 'package:almazr3a/views/components/text.dart';
import 'package:almazr3a/views/components/textformfieldnew.dart';
import 'package:flutter/material.dart';
class SearchNav extends StatefulWidget {
  SearchNav({super.key});

  @override
  State<SearchNav> createState() => _SearchNavState();
}

class _SearchNavState extends State<SearchNav> {
  
  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
       
        body: ListView(
          children: [
    
             Container(
              // color: Colors.white,
               margin: EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                color: Colors.white,
               
              ),
              height: 90,
               child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReTextNormalSize(text: "بحث",size: 14,),
                        ],
                      )
                    ],
                  ),
             ),
         
              Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: TextForm4
                                  (
                                    onTap: () {
                                    },
                                    preicon: "assets/logo/filter.svg",
                                    controller: TextEditingController(),
                                    text: 'ابحث هنا عن ما تريد',
                                  ),
                                
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(21, 0, 21, 0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 28,
                    decoration: BoxDecoration(
                     border: Border.all(
                        width: 1.5,
                        color: lightgrey,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      
                      child: ReTextNormalSizeColor(
                        text: "مزرعة بالعبدلي",
                        size: 12,
                        color: lightgrey,
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 28,
                    decoration: BoxDecoration(
                     border: Border.all(
                        width: 1.5,
                        color: lightgrey,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: ReTextNormalSizeColor(
                        text: "مزرعة بالوفرة",
                        size: 12,
                        color: lightgrey,
                      ),
                    ),
                  ), 
                  Container(
                    width: 120,
                    height: 28,
                    decoration: BoxDecoration(
                     border: Border.all(
                        width: 1.5,
                        color: lightgrey,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: ReTextNormalSizeColor(
                        text: "مزارع",
                        size: 12,
                        color: lightgrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: EdgeInsetsDirectional.fromSTEB(21, 8, 21, 0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 28,
                    decoration: BoxDecoration(
                     border: Border.all(
                        width: 1.5,
                        color: lightgrey,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: ReTextNormalSizeColor(
                        text: "إستراحات",
                        size: 12,
                        color: lightgrey,
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 28,
                    decoration: BoxDecoration(
                     border: Border.all(
                        width: 1.5,
                        color: lightgrey,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: ReTextNormalSizeColor(
                        text: "شراء مزرعة",
                        size: 12,
                        color: lightgrey,
                      ),
                    ),
                  ), 
                 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
