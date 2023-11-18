// ignore_for_file: file_names, prefer_const_constructors

import 'package:almazr3a/views/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/components/colors.dart';
import 'views/components/text.dart';

class Suggestions extends StatefulWidget {
  const Suggestions({super.key});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {

final ValueNotifier<TextDirection> _textdir =
      ValueNotifier(TextDirection.rtl);

   TextEditingController maxTextcontroller = TextEditingController();
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
    return Scaffold(
      
      body: ListView(
        children: [
            Container(
            // color: Colors.white,
             margin: EdgeInsets.only(bottom: 6),
             decoration: BoxDecoration(
              color: Colors.white,
              ),
               height: 85,
               child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 30,
                  ),
                  ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReTextNormalSize(text: "إضافة إقتراح",size: 14,),
                ],
              )
            ],
            ),
           ),

          ValueListenableBuilder<TextDirection>(
          valueListenable: _textdir,
            builder: (context, value, child) => 

       TextFormField(
        // textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "cairo", fontSize: 12),
        textDirection: value,
                  onChanged: (input) {
                    if (input.trim().length < 2) {
                      final dir = getdirection(input);
                      _onChanged;
                      if (dir != value) _textdir.value = dir;
                      }
                  },
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 4,
                  cursorColor: Colors.green,
                  controller: maxTextcontroller,
                  autocorrect: true,
                  // decoration: InputDecoration(hintText: 'Type Some Text Here'),
                  // onChanged: _onChanged,
                  maxLength: 400,
                  
                  decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: green)
                  ) ,
                    filled: true,
                    fillColor: lightgrey,
                    
                    hintText: "بحد اقصى 400 حرف",
                    hintStyle: TextStyle(
                      fontFamily: "cairo",
                    ),
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                    //  borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
          ),
              
             Button(
          // onPressed: (){}, 
          padding: EdgeInsets.only(
            top: 10,
            left: 120,
            right: 120,
            ),
          route: (){},
          color: green, 
          txt: "أرسل إقتراحك",
          height: 48, 
          width: 100, 
          txtColor: Colors.white,
          shadowColor: lightgrey,
          ),

            
        ],
      ),
    );
  }
}


TextDirection getdirection(String v) {
  final string = v.trim();
  if (string.isEmpty) return TextDirection.ltr;
  final firstunit = string.codeUnitAt(0);
  if (firstunit > 0x0600 && firstunit < 0x06ff ||
      firstunit > 0x0750 && firstunit < 0x077f ||
      firstunit > 0x07c0 && firstunit < 0x07ea ||
      firstunit > 0x0840 && firstunit < 0x085b ||
      firstunit > 0x08a0 && firstunit < 0x08b4 ||
      firstunit > 0x08e3 && firstunit < 0x08ff ||
      firstunit > 0xfb50 && firstunit < 0xfbb1 ||
      firstunit > 0xfbd3 && firstunit < 0xfd3d ||
      firstunit > 0xfd50 && firstunit < 0xfd8f ||
      firstunit > 0xfd92 && firstunit < 0xfdc7 ||
      firstunit > 0xfdf0 && firstunit < 0xfdfc ||
      firstunit > 0xfe70 && firstunit < 0xfe74 ||
      firstunit > 0xfe76 && firstunit < 0xfefc ||
      firstunit > 0x10800 && firstunit < 0x10805 ||
      firstunit > 0x1b000 && firstunit < 0x1b0ff ||
      firstunit > 0x1d165 && firstunit < 0x1d169 ||
      firstunit > 0x1d16d && firstunit < 0x1d172 ||
      firstunit > 0x1d17b && firstunit < 0x1d182 ||
      firstunit > 0x1d185 && firstunit < 0x1d18b ||
      firstunit > 0x1d1aa && firstunit < 0x1d1ad ||
      firstunit > 0x1d242 && firstunit < 0x1d244) {
    return TextDirection.rtl;
  }
  return TextDirection.ltr;
}







