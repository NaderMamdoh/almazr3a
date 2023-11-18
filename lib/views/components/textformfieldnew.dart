// ignore_for_file: constant_identifier_names, must_be_immutable, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';
// import 'dart:ui' ;
// import 'package:intl/intl.dart';


class TextForm3 extends StatefulWidget {
   TextForm3({super.key ,required this.text,
      // required this.suficon,
      required this.preicon,
      required this.obscureText,
      required this.image,
      required this.controller});
  String text;
  // Icon suficon;
  IconButton preicon;
  bool obscureText;
  String image;
  TextEditingController controller = TextEditingController();

  @override
  State<TextForm3> createState() => _TextForm3State();
}

class _TextForm3State extends State<TextForm3> {
  final ValueNotifier<TextDirection> _textdir =
      ValueNotifier(TextDirection.rtl);
//  late  String _passwordError;
// String passwordError = "يجب أن تحتوي كلمة المرور على أحرف كبيرة و صغيرة و رموز و أرقام";
  

  
//       validate(){
//   if(!validateStrucre(widget.controller.text)){
//     setState(() {
//      _passwordError = passwordError;
//     });
//     return;
//   }
// }

// bool validateStrucre(String value){
//   String pattern = r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*-]).{8,}$';
//   RegExp regExp = RegExp(pattern);
//   return regExp.hasMatch(value);
// }
// @override
//   void initState() {
    
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    //  TextDirection direction = getTextDirection(text);
    
    return 
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
                      if (dir != value) _textdir.value = dir;
                      }
                  },
        controller: widget.controller,
        cursorColor: Colors.green,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
           focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
          filled: true,
          fillColor: lightgrey,
          // errorText: _passwordError,
          
          // prefixIcon: Icon(Icons.remove_red_eye),
          suffixIcon:  Padding(
          padding: const EdgeInsets.only(left:8.0, right: 10),
          child: SvgPicture.asset(widget.image,
          color: grey,
          // height: 30,
          width: 20,),
        ),
          prefixIcon: widget.preicon,
          hintText: widget.text,
          hintStyle: TextStyle(
            fontFamily: "cairo",
            fontSize: 10
          ),
          hintTextDirection: TextDirection.rtl,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
      ),
    );
  }
}






class TextForm4 extends StatefulWidget {
   TextForm4({super.key ,required this.text,
      // required this.suficon,
      required this.preicon,
      required this.onTap,
     
      required this.controller});
  String text;
  // Icon suficon;
  String preicon;
  
  Function() onTap;
  TextEditingController controller = TextEditingController();

  @override
  State<TextForm4> createState() => _TextForm4State();
}

class _TextForm4State extends State<TextForm4> {
  final ValueNotifier<TextDirection> _textdir =
      ValueNotifier(TextDirection.rtl);

  @override
  Widget build(BuildContext context) {
    //  TextDirection direction = getTextDirection(text);
    
    return 
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
                      if (dir != value) _textdir.value = dir;
                      }
                  },
        controller: widget.controller,
        cursorColor: Colors.green,
        
        decoration: InputDecoration(
           focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
          filled: true,
          fillColor: lightgrey,
          // errorText: _passwordError,
          
          // prefixIcon: Icon(Icons.remove_red_eye),
        //   suffixIcon:  Padding(
        //   padding: const EdgeInsets.only(left:8.0, right: 10),
        //   child: SvgPicture.asset(widget.image,
        //   color: grey,
        //   // height: 30,
        //   width: 20,),
        // ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left:28.0),
            child: Material(
              color: lightgrey,
              child: InkWell(
                onTap:widget.onTap ,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(widget.preicon,
                  color:grey,
                  width: 20,),
                )),
            ),
          ),
          hintText: widget.text,
          hintStyle: TextStyle(
            fontFamily: "cairo",
            fontSize: 10
          ),
          hintTextDirection: TextDirection.rtl,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
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




