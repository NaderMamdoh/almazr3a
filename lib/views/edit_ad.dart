// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables, unused_field

import 'package:almazr3a/views/components/appbar.dart';
import 'package:almazr3a/views/components/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/buttons.dart';
import 'components/text.dart';
import 'components/textForm.dart';
import 'flutterflow/my_ads.dart';

class EditAds extends StatefulWidget {
  EditAds({super.key});

  @override
  State<EditAds> createState() => _EditAdsState();
}

class _EditAdsState extends State<EditAds> {
  TextEditingController MaxTextcontroller = TextEditingController();
  int length = 0;

  String _value = 'مزرعة';
  String _place = 'العبدلي';
  String _area = 'م.ع';
  String _status = 'م.ع';
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

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: myAppBar(
          'تعديل إعلان',
          () {
            Get.off(MyAds());
          },
        ),
        body: SizedBox(
            height: h,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: ListView(children: [
                SizedBox(
                  height: 10,
                ),
                ReTextNormalSizeColor(
                    text: "معلومات التواصل", size: 16, color: grey),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "الإسم بالكامل"),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField(
                  controller: TextEditingController(),
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "رقم الهاتف المحمول"),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField(
                  controller: TextEditingController(),
                  text: '',
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // TextFormField(
                //   cursorColor: Colors.green,
                //   controller: MaxTextcontroller,
                //   autocorrect: true,
                //   // decoration: InputDecoration(hintText: 'Type Some Text Here'),
                //   onChanged: _onChanged,
                //   maxLength: 400,
                //   decoration: InputDecoration(
                //     hintText: "بحد اقصى 400 حرف",
                //     hintStyle: TextStyle(
                //       fontFamily: "cairo",
                //     ),
                //     hintTextDirection: TextDirection.rtl,
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(5))),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "رقم واتساب"),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField(
                  controller: TextEditingController(),
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "العنوان"),
                SizedBox(
                  height: 10,
                ),
                ReTextFormField(
                  controller: TextEditingController(),
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextNormalSizeColor(
                    text: "تفاصيل الإعلان", size: 16, color: grey),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "النوع"),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: "مزرعة",
                    hintStyle: TextStyle(
                      fontFamily: "cairo",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  // value: _value,
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: 'مزرعة',
                      child: ReTextNormalSize(
                        text: 'مزرعة',
                        size: 14,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'مطعم',
                      child: ReTextNormalSize(
                        text: 'مطعم',
                        size: 14,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'كافيهات',
                      child: ReTextNormalSize(
                        text: 'كافيهات',
                        size: 14,
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

                ReTextNormal(text: "المساحة"),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: "10000",
                    hintStyle: TextStyle(
                      fontFamily: "cairo",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  // value: _area,
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: 'م.ع',
                      child: ReTextNormalSize(
                        text: 'م.ع',
                        size: 14,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'م.ك',
                      child: ReTextNormalSize(
                        text: 'م.ك',
                        size: 14,
                      ),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() => _area = value!);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "الوصف"),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
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
                    hintText: "بحد اقصى 400 حرف",
                    hintStyle: TextStyle(
                      fontFamily: "cairo",
                    ),
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
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
                            onTap: () {},
                            child: SizedBox(
                              height: 41,
                              width: 41,
                              child: Image.asset(
                                'assets/home.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              height: 41,
                              width: 41,
                              child: Image.asset(
                                'assets/home.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              height: 41,
                              width: 41,
                              // color: Colors.amber,
                              child: Image.asset(
                                'assets/home.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
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
                                  shape: BoxShape.rectangle),
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "المميزات"),
                SizedBox(
                  height: 10,
                ),
                ReTextFormFieldHint(
                    text: "موقع متميز", controller: TextEditingController()),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "الموقع"),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  // value: _place,
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: 'العبدلي',
                      child: ReTextNormalSize(
                        text: 'العبدلي',
                        size: 14,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'الوفرة',
                      child: ReTextNormalSize(
                        text: 'الوفرة',
                        size: 14,
                      ),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() => _place = value!);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "الحالة"),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: "متاحة للإيجار",
                    hintStyle: TextStyle(
                      fontFamily: "cairo",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  // value: _place,
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: 'متاحة للإيجار',
                      child: ReTextNormalSize(
                        text: 'متاحة للإيجار',
                        size: 14,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'غير متاح للإيجار',
                      child: ReTextNormalSize(
                        text: 'غير متاح للإيجار',
                        size: 14,
                      ),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() => _status = value!);
                  },
                ),

                SizedBox(
                  height: 10,
                ),
                ReTextNormal(text: "ملاحظات"),
                SizedBox(
                  height: 10,
                ),
                ReTextFormFieldHint(
                  controller: TextEditingController(),
                  text: 'أجهزة فقط دون أواني',
                ),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ReButton2(
                        onPressed: () {},
                        color: green,
                        height: 48,
                        width: 160,
                        child: ReTextNormalSizeColor(
                            text: "نشر الإعلان", size: 14, color: Colors.white),
                      ),
                      ReButton2(
                        onPressed: () {},
                        color: grey,
                        height: 48,
                        width: 106,
                        child: ReTextNormalSizeColor(
                            text: "إلغاء", size: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ]),
            )),
      ),
    );
  }
}
