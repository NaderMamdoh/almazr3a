// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:almazr3a/views/components/colors.dart';
import 'package:flutter/material.dart';

class ReButton extends StatelessWidget {
  ReButton({super.key, required this.onPressed, required this.child});
  final onPressed;
  final child;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: child,
        height: 45,
        minWidth: 100,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.deepPurple[300]);
  }
}

class ReButton2 extends StatelessWidget {
  ReButton2({
    super.key,
    required this.onPressed,
    required this.child,
    // required this.text,
    required this.color,
    required this.height,
    required this.width,
  });
  final onPressed;
  final child;
  // String text;
  Color color;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: child,
        height: height,
        minWidth: width,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: color);
  }
}

class ReTextButton extends StatelessWidget {
  ReTextButton({super.key, 
  required this.text, 
  required this.size, 
  required this.onpressed
  });
  String text;
  double size;
  Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        // style: ButtonStyle(
        //     padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
        //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //         RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(18.0),
        //             side: BorderSide(color: Colors.green)))),
        onPressed: onpressed,
        child: Text(text,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
                fontFamily: "cairo",
                fontSize: size,
                color: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.green)));
  }
}

class ReTextButtonNoUnderline extends StatelessWidget {
  ReTextButtonNoUnderline({super.key, required this.text, required this.onpressed});
  String text;
  Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        // style: ButtonStyle(
        //     padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
        //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //         RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(18.0),
        //             side: BorderSide(color: Colors.green)))),
        onPressed: onpressed,
        child: Text(text,
            style: TextStyle(
                fontFamily: "cairo",
                fontSize: 16,
                color: Colors.green,
                // decoration: TextDecoration.underline,
                decorationColor: Colors.green)));
  }
}


class ReTextButtonNoUnderlineSize extends StatelessWidget {
  ReTextButtonNoUnderlineSize({super.key, 
  required this.text,
  required this.size,
   required this.onpressed});
  String text;
  double size;
  Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        // style: ButtonStyle(
        //     padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
        //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //         RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(18.0),
        //             side: BorderSide(color: Colors.green)))),
        onPressed: onpressed,
        child: Text(text,
            style: TextStyle(
                fontFamily: "cairo",
                fontSize: size,
                color: Colors.green,
                // decoration: TextDecoration.underline,
                decorationColor: Colors.green)));
  }
}


class ReElevatedButton extends StatelessWidget {
  const ReElevatedButton(
      {super.key, required this.onPressed, required this.child});
  final onPressed;
  final child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.yellow,
          backgroundColor: Colors.blue,
          shape: StadiumBorder()),
      child: child,
    );
  }
}

class Button extends StatelessWidget {
  Color color;
  Color txtColor;
  Color shadowColor;
  String txt;
  double height;
  double width ;
  var padding = EdgeInsets.all(0);
  Function() route;
  Button({
    Key? key,
    required this.color,
    required this.route,
    required this.txt,
    required this.txtColor,
    required this.shadowColor,
    required this.height,
    required this.width,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // bool isDark = Theme.of(context).brightness == Brightness.dark;


        // height: w / 9,
        // width: w / 2.5,


    return Padding(
      padding: padding,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
         boxShadow: [
          BoxShadow(
            color: grey,
            blurRadius: 6,
          )
        ],
        ),
        child: Material(
          color: Color.fromARGB(0, 64, 233, 255),
          child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            highlightColor: Color.fromARGB(255, 60, 136, 16),
            // splashColor: Color.fromARGB(255, 29, 85, 7),
            onTap: route,
            child: Center(
              child: Text(
                txt,
                style: TextStyle(
                    fontFamily: "cairo",
                    color: txtColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  Color color;
  Color txtColor;
  Color shadowColor;
  String txt;
  Function() route;
  Button2({
    Key? key,
    required this.color,
    required this.route,
    required this.txt,
    required this.txtColor,
    required this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: 106,
      height: 48,
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      // iconPadding: EdgeInsetsDirectional.fromSTEB(
      //     0, 0, 0, 0),
      // height: w / 9,
      // width: w / 2.5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: grey,
            blurRadius: 6,
          )
        ],
      ),
      child: Material(
        color: Color.fromARGB(0, 64, 233, 255),
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          // highlightColor: Color.fromARGB(255, 60, 136, 16),
          // splashColor: Color.fromARGB(255, 29, 85, 7),
          onTap: route,
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                  fontFamily: "cairo",
                  color: txtColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}


class Button3 extends StatelessWidget {
  Color color;
  String txt;
  Function() route;
  Button3({
    Key? key,
    required this.color,
    required this.route,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: w,
      height: 50,
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      // iconPadding: EdgeInsetsDirectional.fromSTEB(
      //     0, 0, 0, 0),
      // height: w / 9,
      // width: w / 2.5,
      decoration: BoxDecoration(
         boxShadow: [
          BoxShadow(
            color: grey,
            blurRadius: 6,
          )
        ],
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        
      ),
      child: Material(
        color: Color.fromARGB(0, 64, 233, 255),
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          // highlightColor: Color.fromARGB(255, 60, 136, 16),
          // splashColor: Color.fromARGB(255, 29, 85, 7),
          onTap: route,
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                  fontFamily: "cairo",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class Button3TextColor extends StatelessWidget {
  Color color;
  Color textColor;
  String txt;
  Function() route;
  Button3TextColor({
    Key? key,
    required this.color,
    required this.route,
    required this.txt,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: w,
      height: 50,
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      // iconPadding: EdgeInsetsDirectional.fromSTEB(
      //     0, 0, 0, 0),
      // height: w / 9,
      // width: w / 2.5,
      decoration: BoxDecoration(
        
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: grey,
            blurRadius: 6,
          )
        ]
        
      ),
      child: Material(
        color: Color.fromARGB(0, 64, 233, 255),
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          // highlightColor: Color.fromARGB(255, 60, 136, 16),
          // splashColor: Color.fromARGB(255, 29, 85, 7),
          onTap: route,
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                  fontFamily: "cairo",
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
