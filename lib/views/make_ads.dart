// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:almazr3a/views/add_ads.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/buttons.dart';
import 'components/text.dart';
import 'components/textForm.dart';

class MakeAds extends StatefulWidget {
  const MakeAds({super.key});

  @override
  State<MakeAds> createState() => _MakeAdsState();
}

class _MakeAdsState extends State<MakeAds> {
  TextEditingController MaxTextcontroller = TextEditingController();
  int length = 0;


  _onChanged(String value) {
    setState(() {
      length = value.length;
    });

    if (length == 400) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('معذرة لقد وصلت للحد الأقصى'),
            actions: <Widget>[
              TextButton(
                child: Text("موافق"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
     String _value = 'العبدلي';
     String _adtype = 'أخضر';
     
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 90,
            title: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.offAll(AddAds());
                              },
                              icon: Icon(Icons.arrow_circle_right_outlined,
                                  size: 30, color: Colors.black)),
                                  SizedBox(width: 14,),
                          ReTextNormalSize(text: "إضافة إعلان",size: 14),
                        ],
                      ),
                     
                    ]),
              ],
            ),

        ),
        body: SizedBox(
            height: h,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: ListView(children: [
                Row(
                  children: [
                    ReTextNormal(text: "العنوان"),
                    ReTextNormalcolor(
                      text: "*",
                      color: green,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField2(
                  controller: TextEditingController(),
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ReTextNormal(text: "الوصف"),
                    ReTextNormalcolor(
                      text: "*",
                      color: green,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(fontFamily: "cairo",fontSize: 12),
                  keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
                  cursorColor: Colors.green,
                  controller: MaxTextcontroller,
                  autocorrect: true,
                  // decoration: InputDecoration(hintText: 'Type Some Text Here'),
                  onChanged: _onChanged,
                  maxLength: 400,
                  decoration: InputDecoration(
                    
                    // filled: true,
                    // fillColor: lightgrey,
                    
                    hintText: "بحد اقصى 400 حرف",
                    hintStyle: TextStyle(
                      fontFamily: "cairo",
                    ),
                    hintTextDirection: TextDirection.rtl,
                     border: OutlineInputBorder(
        //  borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Row(
                //   children: [
                //     ReTextNormal(text: "الفئة"),
                //     ReTextNormalcolor(
                //       text: "*",
                //       color: green,
                //     ),
                //   ],
                // ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //  DropdownButtonFormField<String>(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            // borderRadius: BorderRadius.all(Radius.circular(5))),
            //   ),
            //               value: _value,
            //               items: <DropdownMenuItem<String>>[
            //                 DropdownMenuItem(
            //                   value: 'العبدلي',
            //                   child: ReTextNormalSize(
            //                     text: 'العبدلي',
            //                     size: 14,
            //                   ),
            //                 ),
            //                 DropdownMenuItem(
            //                   value: 'الوفرة',
            //                   child: ReTextNormalSize(
            //                     text: 'الوفرة',
            //                     size: 14,
            //                   ),
            //                 ),
            //               ],
            //               onChanged: (String? value) {
            //                 setState(() => _value = value!);
            //               },
            //             ),

                // SizedBox(
                //   height: 10,
                // ),

                Row(
                  children: [
                    ReTextNormal(text: "نوع الإعلان"),
                    ReTextNormalcolor(
                      text: "*",
                      color: green,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField<String>(
                  style: TextStyle(fontFamily: "cairo", fontSize: 12),
              decoration: InputDecoration(
                hintStyle: TextStyle(fontFamily: "cairo", fontSize: 12),
                border: OutlineInputBorder(

            borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
                          value: _adtype,
                          items: <DropdownMenuItem<String>>[
                            DropdownMenuItem(
                              
                              value: 'أخضر',
                              child: ReTextNormalSize(
                                text: 'أخضر',
                                size: 12,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'أصفر',
                              child: ReTextNormalSize(
                                text: 'أصفر',
                                size: 12,
                              ),
                            ),
                          ],
                          onChanged: (String? value) {
                            setState(() => _adtype = value!);
                          },
                        ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ReTextNormal(text: "السعر"),
                    ReTextNormalcolor(
                      text: "*",
                      color: green,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField2(
                  controller: TextEditingController(),
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ReTextNormal(text: "المنطقة"),
                    ReTextNormalcolor(
                      text: "*",
                      color: green,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                    DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
                          value: _value,
                          items: <DropdownMenuItem<String>>[
                            DropdownMenuItem(
                              value: 'العبدلي',
                              child: ReTextNormalSize(
                                text: 'العبدلي',
                                size: 12,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'الوفرة',
                              child: ReTextNormalSize(
                                text: 'الوفرة',
                                size: 12,
                              ),
                            ),
                          ],
                          onChanged: (String? value) {
                            setState(() => _value = value!);
                          },
                        ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ReTextNormal(text: "رقم الهاتف المحمول"),
                    ReTextNormalcolor(
                      text: "*",
                      color: green,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField2(
                  controller: TextEditingController(),
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ReTextNormal(text: "رقم واتساب"),
                    // ReTextNormalcolor(text: "*", color:green,),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField2(
                  controller: TextEditingController(),
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                 Row(
                  children: [
                    ReTextNormal(text: "مرفقات"),
                    // ReTextNormalcolor(text: "*", color:green,),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                
               DottedBorder(
                strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(6),
      dashPattern: [10, 10],
   color: Colors.grey,
      child: ClipRRect(

        // borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: Row(
            children: [
              InkWell(
                onTap: (){},
                child: SizedBox(
                  height: 41,
                  width: 41,
                 child: Image.asset('assets/home.png',
                  fit: BoxFit.fill,),
                ),
              ),
        
              SizedBox(
                    width: 5,
                  ),
                  
                  InkWell(
                onTap: (){},
                child: SizedBox(
                  height: 41,
                  width: 41,
                  child: Image.asset('assets/home.png',
                  fit: BoxFit.fill,),
                ),
              ),
              SizedBox(
                    width: 5,
                  ),

              InkWell(
                onTap: (){},
                child: SizedBox(
                  height: 41,
                  width: 41,
                  // color: Colors.amber,
                  child: Image.asset('assets/home.png',
                  fit: BoxFit.fill,),
                ),
              ),
        
              SizedBox(
                    width: 5,
                  ),

                  InkWell(
                onTap: (){},
                child: Container(
                  height: 41,
                  width: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // color: Colors.grey,
                      border: Border.all(
        width: 1,
        color: Colors.grey,
        style: BorderStyle.solid,
      ),
                    shape: BoxShape.rectangle
                  ),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                ),
              ),
            ],
          ),
        ),
      ),
             ),
             
                 Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                              ReButton2(
                              onPressed: (){},
                                
                                 color: green,
                                 height: 48,
                                 width: 160,
                               child: ReTextNormalSizeColor(text: "نشر الإعلان",
                               size: 14,
                               color: Colors.white),),
                            ReButton2(
                              onPressed: (){},
                                
                                 color: red,
                                 height: 48,
                                 width: 106,
                               child: ReTextNormalSizeColor(text: "إلغاء",
                               size: 14,
                               color: Colors.white),),
                                 
                               
                          
                          ],
                        ),
                      ),
                       ]
             
             ),
             
            )
            ),
      ),
    );
  }
}
