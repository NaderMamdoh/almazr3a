// ignore_for_file: prefer_const_constructors, must_be_immutable, camel_case_types, file_names, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';
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





class ReTextFormFieldSuffix extends StatelessWidget {
  ReTextFormFieldSuffix(
      {super.key,
      required this.text,
      // required this.suficon,
      required this.image,
      required this.controller
      });
  String text;
  // Icon suficon;
  String image;
  TextEditingController controller = TextEditingController();
  final ValueNotifier<TextDirection> _textdir =
      ValueNotifier(TextDirection.rtl);
  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder<TextDirection>(
            valueListenable: _textdir,
            builder: (context, value, child) => 
TextFormField(
          textDirection: value,
                  onChanged: (input) {
                    if (input.trim().length < 2) {
                      final dir = getdirection(input);
                      if (dir != value) _textdir.value = dir;
                      }
                  },
      style: TextStyle(fontFamily: "cairo", fontSize: 12,),
      controller: controller,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        filled: true,
        fillColor: lightgrey,
        // prefixIcon: Icon(Icons.remove_red_eye),
         suffixIcon: 
         Padding(
          padding: const EdgeInsets.only(left:8.0, right: 10),
          child: SvgPicture.asset(image,
          color: grey,
          // height: 30,
          width: 20,),
        ),
        hintText: text,
        hintStyle: TextStyle(
          fontFamily: "cairo",
          fontSize: 10
        ),
        hintTextDirection: TextDirection.rtl,
        
         border: OutlineInputBorder( 
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
     ) );
  }
}


class ReTextFormFieldPrefix extends StatelessWidget {
  ReTextFormFieldPrefix(
      {super.key,
      required this.text,
      required this.preicon,
      required this.controller});
  String text;
  Widget preicon;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.green,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
         filled:true,
        fillColor: lightgrey,
        // prefixIcon: Icon(Icons.remove_red_eye),
        prefixIcon: preicon,
        
        hintText: text,
        hintStyle: TextStyle(
        fontFamily: "cairo",
        ),
        hintTextDirection: TextDirection.ltr,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0))),
      ),
    );
  }
}

// //-------------------------------
// //TextFormField with max limit
// //-------------------------------

// class MaxText extends StatefulWidget {
//   MaxText({super.key, required this.text, required this.controller});
//   TextEditingController controller = TextEditingController();
//   String text;
//   @override
//   _MaxText createState() => _MaxText();
// }

// class _MaxText extends State<MaxText> {
//   int length = 0;

//   _onChanged(String value) {
//     setState(() {
//       length = value.length;
//     });

//     if (length == 400) {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('معذرة لقد وصلت للحد الأقصى'),
//             actions: <Widget>[
//               TextButton(
//                 child: Text("موافق"),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       cursorColor: Colors.green,
//       controller: controller,
//       autocorrect: true,
//       // decoration: InputDecoration(hintText: 'Type Some Text Here'),
//       onChanged: _onChanged,
//       maxLength: 8,
//       decoration: InputDecoration(
//         hintText: text,
//         hintStyle: TextStyle(
//           fontFamily: "cairo",
//         ),
//         hintTextDirection: TextDirection.rtl,
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(5))),
//       ),
//     );
//   }
// }

//-------------------------------
//TextFormField No Icon
//-------------------------------



//------------------------------
class ReTextFormField extends StatelessWidget {
  ReTextFormField({super.key, required this.text, required this.controller});
  String text;

  TextEditingController controller = TextEditingController();
  final ValueNotifier<TextDirection> _textdir =
      ValueNotifier(TextDirection.rtl);
  @override
  Widget build(BuildContext context) {
    return   ValueListenableBuilder<TextDirection>(
            valueListenable: _textdir,
            builder: (context, value, child) => 
TextFormField(
      controller: controller,
      cursorColor: Colors.green,
         style: TextStyle(fontFamily: "cairo", fontSize: 12),
        textDirection: value,
                  onChanged: (input) {
                    if (input.trim().length < 2) {
                      final dir = getdirection(input);
                      if (dir != value) _textdir.value = dir;
                      }
                  },
      decoration: InputDecoration(
        focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: green)
        // ),
        filled: true,
        fillColor: lightgrey,

        hintText: text,
        hintStyle: TextStyle(
          fontFamily: "cairo",
          fontSize: 10
        ),
        hintTextDirection: TextDirection.rtl,
        border: OutlineInputBorder(
         borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
     ) );
  }

}class ReTextFormField2 extends StatelessWidget {
  ReTextFormField2({super.key, required this.text, required this.controller});
  String text;

  TextEditingController controller = TextEditingController();
  final ValueNotifier<TextDirection> _textdir =
      ValueNotifier(TextDirection.rtl);
  @override
  Widget build(BuildContext context) {
    return   ValueListenableBuilder<TextDirection>(
            valueListenable: _textdir,
            builder: (context, value, child) => 
TextFormField(
      controller: controller,
      cursorColor: Colors.green,
         style: TextStyle(fontFamily: "cairo", fontSize: 12),
        textDirection: value,
                  onChanged: (input) {
                    if (input.trim().length < 2) {
                      final dir = getdirection(input);
                      if (dir != value) _textdir.value = dir;
                      }
                  },
      decoration: InputDecoration(
         focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
        hintText: text,
        hintStyle: TextStyle(
          fontFamily: "cairo",
          fontSize: 10
        ),
        hintTextDirection: TextDirection.rtl,
        border: OutlineInputBorder(
         
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
     ) );
  }
}

class ReTextFormFieldSuffix_Prefix extends StatefulWidget {
  ReTextFormFieldSuffix_Prefix(
      {super.key,
      required this.text,
      required this.suficon,
      required this.preicon,
      required this.obscureText,
      required this.controller});
  String text;
  Icon suficon;
  IconButton preicon;
  bool obscureText;
  TextEditingController controller = TextEditingController();
@override
  
  @override
  State<ReTextFormFieldSuffix_Prefix> createState() => _ReTextFormFieldSuffix_PrefixState();
}

class _ReTextFormFieldSuffix_PrefixState extends State<ReTextFormFieldSuffix_Prefix> {
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      controller: widget.controller,
      cursorColor: Colors.green,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
         focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
        // prefixIcon: Icon(Icons.remove_red_eye),
        suffixIcon: widget.suficon,
        prefixIcon: widget.preicon,
        hintText: widget.text,
        hintStyle: TextStyle(
          fontFamily: "cairo",
        ),
        hintTextDirection: TextDirection.rtl,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
class ReTextFormFieldHint extends StatelessWidget {
  ReTextFormFieldHint(
      {super.key,
      required this.text,
      required this.controller});
  String text;
 

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        // prefixIcon: Icon(Icons.remove_red_eye),
         focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: green)
        ) ,
        hintText: text,
        hintStyle: TextStyle(
          fontFamily: "cairo",
        ),
        hintTextDirection: TextDirection.rtl,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
