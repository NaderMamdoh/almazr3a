// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';



//-------------------------------
//CheckBox
//-------------------------------

class ReCheckBox extends StatelessWidget {
  ReCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text("title text"),
      value: false,
      onChanged: (newValue) {},
      controlAffinity:
          ListTileControlAffinity.platform, //  <-- leading Checkbox
    );
  }
}

//-------------------------------
//Button
//-------------------------------

class Check extends StatelessWidget {
  Color color;
  Color iconColor;
  Color shadowColor;
  Check({
    required this.color,
    required this.iconColor,
    required this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: w / 15,
        // height: h/25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color,
          boxShadow: [
            BoxShadow(color: shadowColor, blurRadius: 10.0),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Icon(Icons.done_outline_rounded, color: iconColor),
        ),
      ),
    );
  }
}
