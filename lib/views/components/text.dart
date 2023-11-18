// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class ReText extends StatelessWidget {
  String text;
  ReText({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "cairo", fontSize: 21, color: Colors.black),
      // style: GoogleFonts.cairo(fontSize: 21, color: Colors.black),
    );
  }
}

class ReTextNormal extends StatelessWidget {
  String text;
  ReTextNormal({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "cairo", fontSize: 11, color: Colors.black),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}

class ReTextNormalSize extends StatelessWidget {
  String text;
  double size;
  ReTextNormalSize({
    super.key,
    required this.text,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontFamily: "cairo", fontSize: size, color: Colors.black,fontWeight: FontWeight.bold),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}
class ReTextSize extends StatelessWidget {
  String text;
  double size;
  ReTextSize({
    super.key,
    required this.text,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontFamily: "cairo", fontSize: size, color: Colors.black,),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}

class ReTextRichSize extends StatelessWidget {
  String text;
  double size;
  ReTextRichSize({
    super.key,
    required this.text,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style:
          TextStyle(fontFamily: "cairo", fontSize: size, color: Colors.black,fontWeight: FontWeight.bold),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}

class ReTextRichSizew400 extends StatelessWidget {
  String text;
  double size;
  ReTextRichSizew400({
    super.key,
    required this.text,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style:
          TextStyle(fontFamily: "cairo", fontSize: size, color: Colors.black,fontWeight: FontWeight.w400),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}


class ReTextRichSizeColor extends StatelessWidget {
  String text;
  double size;
  Color color;
  ReTextRichSizeColor({
    super.key,
    required this.text,
    required this.size,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style:
          TextStyle(fontFamily: "cairo", fontSize: size, color: color,fontWeight: FontWeight.bold),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}

class ReTextNormalSizeColor extends StatelessWidget {
  String text;
  double size;
  Color color;
  ReTextNormalSizeColor({
    super.key,
    required this.text,
    required this.size,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontFamily: "cairo", fontSize: size, color:color, fontWeight: FontWeight.bold),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}

class ReTextNormalcolor extends StatelessWidget {
  String text;
  Color color;
  ReTextNormalcolor({
    super.key,
    required this.text,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "cairo", fontSize: 18, color: color),
      // style: GoogleFonts.cairo(fontSize: 18, color: Colors.black),
    );
  }
}

class ReTextBold extends StatelessWidget {
  String text;
  ReTextBold({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "cairo",
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.bold),
      // style: GoogleFonts.cairo( fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class ReSubText extends StatelessWidget {
  String text;
  ReSubText({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "cairo", fontSize: 12, color: Colors.grey),
      // style: GoogleFonts.cairo(fontSize: 16, color: Colors.grey),
    );
  }
}
class ReSubTextSize extends StatelessWidget {
  String text;
  double size;
  ReSubTextSize({
    super.key,
    required this.text,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "cairo", fontSize: size, color: Colors.grey),
      // style: GoogleFonts.cairo(fontSize: 16, color: Colors.grey),
    );
  }
}
class ReSubTextSmall extends StatelessWidget {
  String text;
  ReSubTextSmall({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "cairo", fontSize: 10, color: Colors.grey),
      // style: GoogleFonts.cairo(fontSize: 16, color: Colors.grey),
    );
  }
}

class ReSubTextLarge extends StatelessWidget {
  String text;
  ReSubTextLarge({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "cairo", fontSize: 12, color: Colors.grey),
      // style: GoogleFonts.cairo(fontSize: 16, color: Colors.grey),
    );
  }
}
