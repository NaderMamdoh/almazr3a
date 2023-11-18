// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:almazr3a/views/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'text.dart';

class GreenCard extends StatelessWidget {
  GreenCard({
    super.key,
    required this.image,
    required this.txtname,
    required this.txtdesc,
    required this.txtprice,
    required this.onTab,
  });
  // Widget image;
  String image;
  String txtname;
  String txtdesc;
  String txtprice;
  // String images;
  Function()? onTab;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTab,
      child: Container(
          width: w,
          height: 140,
          // color: Color(0xFF45b22b),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xFFcecece),
                Color(0xFF45b22b),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: 100,
                  height: 107,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReTextSize(
                      text: txtname,
                      size: 12,
                    ),
                    ReTextRichSizew400(text: txtdesc, size: 11),
                    SizedBox(
                      height: 5,
                    ),
                    ReTextSize(text: "السعر", size: 12),
                    ReTextSize(text: txtprice, size: 12),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class WhiteCard extends StatelessWidget {
  WhiteCard({
    super.key,
    required this.image,
    required this.txtname,
    required this.txtdesc,
    required this.txtprice,
    required this.onTab,
  });
  // Widget image;
  String image;
  String txtname;
  String txtdesc;
  String txtprice;
  Function()? onTab;
  // String images;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTab,
      child: Container(
          width: w,
          height: 140,
          color: Color.fromARGB(255, 238, 245, 255),
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //     colors: <Color>[
          //       Color(0xFFcecece),
          //       Color(0xFF45b22b),
          //     ],
          //   ),
          // ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
            child: Row(
              children: [
                Image.asset(
                  image,
                  // fit: BoxFit.fill,
                  width: 100,
                  height: 107,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReTextSize(
                      text: txtname,
                      size: 12,
                    ),
                    ReTextRichSizew400(text: txtdesc, size: 11),
                    SizedBox(
                      height: 5,
                    ),
                    ReTextSize(text: "السعر", size: 12),
                    ReTextSize(text: txtprice, size: 12),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class GoldenCard extends StatelessWidget {
  GoldenCard({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.txtname,
    required this.txtdesc,
    required this.txtprice,
    required this.onTab,
  });
  // Widget image;
  String image1;
  String image2;
  String image3;
  String image4;
  String txtname;
  String txtdesc;
  String txtprice;
  Function()? onTab;
  // String images;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTab,
      child: Container(
          width: w,
          height: 260,
          decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xFFffd300),
                Color(0xFF957901),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        image1,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        image2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        image3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        image4,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReTextSize(
                      text: txtname,
                      size: 12,
                    ),
                    ReTextRichSizew400(text: txtdesc, size: 11),
                    SizedBox(
                      height: 5,
                    ),
                    ReTextSize(text: "السعر", size: 12),
                    ReTextSize(text: txtprice, size: 12),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class HomePageCard extends StatelessWidget {
  Image image;
  Color color;
  Color iconColor;
  Color txtColor;
  String title;
  Function() route;

  // Widget child ;

  HomePageCard({
    Key? key,
    required this.image,
    required this.color,
    required this.route,
    required this.title,
    required this.txtColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
        height: w / 6,
        width: w / 4,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
        child: Material(
          color: Color.fromARGB(0, 64, 233, 255),
          child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            // highlightColor: Color.fromARGB(255, 36, 254, 54),
            splashColor: Color.fromARGB(255, 8, 104, 56),
            onTap: route,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: w / 9, width: w / 9, child: image),
                Text(
                  title,
                  style: TextStyle(
                      color: txtColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  // Image image;
  String image;
  Color color;
  // Color iconColor;
  // Color txtColor;
  String title;
  Function() route;
  // SvgPicture image;

  // Widget child ;

  CustomCard({
    Key? key,
    // required this.image,
    required this.color,
    required this.route,
    required this.title,
    // required this.txtColor,
    // required this.iconColor,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;

    return Container(
     width: 100,
      height: 90,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          ),
        child: InkWell(
        borderRadius:  BorderRadius.all(
          Radius.circular(8),
        ),
        onTap: route,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              SvgPicture.asset(
              image,
              width: 40,
              height: 40,
              alignment: Alignment.center,
            ),
             
            ReTextNormalSize(
             text: title,
             size: 11,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  // Image image;
  String image;
  Color color;
  // Color iconColor;
  // Color txtColor;
  String title;
  Function() route;
  // SvgPicture image;

  // Widget child ;

  CustomCard2({
    Key? key,
    // required this.image,
    required this.color,
    required this.route,
    required this.title,
    // required this.txtColor,
    // required this.iconColor,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;

    return Container(
     width: 80,
      height: 80,
       margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: Color.fromARGB(255, 157, 158, 158),
                offset: Offset(0, 1.5),
                blurRadius: 10,
              )]
            ),
      child: InkWell(
        borderRadius:  BorderRadius.all(
          Radius.circular(10),
        ),
        // highlightColor: Color.fromARGB(255, 36, 254, 54),
        // splashColor: Color.fromARGB(255, 8, 104, 56),
        onTap: route,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Expanded(
                  child: SvgPicture.asset(
                  image,
                  // width: 100,
                  height: 100,
                  alignment: Alignment.center,
                              ),
                ),
               
              ReTextNormalSize(
               text: title,
               size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomCard2png extends StatelessWidget {
  // Image image;
  String image;
  // Color color;
  // Color iconColor;
  // Color txtColor;
  String title;
  Function() route;
  // SvgPicture image;

  // Widget child ;

  CustomCard2png({
    Key? key,
    // required this.image,
    // required this.color,
    required this.route,
    required this.title,
    // required this.txtColor,
    // required this.iconColor,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;

    return Container(
     width: 76,
      height: 96,
       margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: lightgrey,
                offset: Offset(0, 1.5),
                blurRadius: 10,
              )]
            ),
      child: InkWell(
        borderRadius:  BorderRadius.all(
          Radius.circular(10),
        ),
        onTap: route,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Expanded(
                  child: Image.asset(
                  image,
                  alignment: Alignment.center,
                              ),
                ),
               
              ReTextNormalSize(
               text: title,
               size: 11,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CustomCard3png extends StatelessWidget {
  // Image image;
  String image;
  // Color color;
  // Color iconColor;
  // Color txtColor;
  String title;
  Function() route;
  // SvgPicture image;

  // Widget child ;

  CustomCard3png({
    Key? key,
    // required this.image,
    // required this.color,
    required this.route,
    required this.title,
    // required this.txtColor,
    // required this.iconColor,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;

    return Container(
     width: 76,
      height: 96,
       margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: lightgrey,
                offset: Offset(0, 1.5),
                blurRadius: 10,
              )]
            ),
      child: InkWell(
        borderRadius:  BorderRadius.all(
          Radius.circular(10),
        ),
        onTap: route,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Expanded(
                  child: Image.asset(
                  image,
                  alignment: Alignment.center,
                              ),
                ),
               
              ReTextNormalSize(
               text: title,
               size: 11,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageCard1 extends StatelessWidget {
  Widget image;
  // Color txtColor;
  // String title;
  Function() route;

  // Widget child ;

  HomePageCard1({
    Key? key,
    required this.image,
    required this.route,
    // required this.title,
    // required this.txtColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
        height: w / 6,
        width: w / 4,
        decoration: BoxDecoration(
          // color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Material(
          color: Color.fromARGB(0, 64, 233, 255),
          child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            highlightColor: Color.fromARGB(255, 36, 254, 54),
            splashColor: Color.fromARGB(255, 8, 104, 56),
            onTap: route,
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                SizedBox(height: w, child: image),
                // Text(
                //   title,
                //   style: TextStyle(
                //       color: txtColor,
                //       fontWeight: FontWeight.w700,
                //       fontSize: 17,),
                //       textAlign: TextAlign.center,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdCard extends StatelessWidget {
  Color color;
  var widget;
  String txt1;
  String richtxt2;
  String txt3;
  String txt4;
  String txt5;
  Function() ontap;

  AdCard({
    super.key,
    required this.color,
    required this.widget,
    required this.txt1,
    required this.richtxt2,
    required this.txt3,
    required this.txt4,
    required this.txt5,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
          child: Container(
            height: w / 3.2,
            width: w,
            decoration: BoxDecoration(
                // color: Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 5, color: Color.fromARGB(73, 0, 0, 0))
                ]),
            child: Card(
              color: color,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: widget,
                    //  Image.asset("/assets/images/veg.jpg"),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                        alignment: Alignment.topRight,
                        height: w / 3.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Container(
                            //   margin: EdgeInsets.only(top: 10, bottom: 10),
                            //   child: Text("name",
                            //       style: TextStyle(
                            //           fontSize: 20, fontWeight: FontWeight.w800),
                            //       textAlign: TextAlign.center),
                            // ),

                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, right: 5),
                              child: Text(
                                txt1,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: richtxt2,
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                txt3,
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 78, 78, 78),
                                    fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    txt4,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  Text(
                                    txt5,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          onTap: ontap),
    );
  }
}

class GoldAdCard extends StatelessWidget {
  Color color;
  var widget1;
  var widget2;
  var widget3;
  var widget4;
  String txt1;
  String richtxt2;
  String txt3;
  String txt4;
  String txt5;
  Function() ontap;

  GoldAdCard({
    super.key,
    required this.color,
    required this.widget1,
    required this.widget2,
    required this.widget3,
    required this.widget4,
    required this.txt1,
    required this.richtxt2,
    required this.txt3,
    required this.txt4,
    required this.txt5,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
          child: Container(
            height: w / 2.2,
            width: w,
            decoration: BoxDecoration(
                // color: Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 5, color: Color.fromARGB(73, 0, 0, 0))
                ]),
            child: Card(
              color: color,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: h / 12,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: widget1,
                            //  Image.asset("/assets/images/veg.jpg"),
                          ),
                          Expanded(
                            flex: 1,
                            child: widget2,
                            //  Image.asset("/assets/images/veg.jpg"),
                          ),
                          Expanded(
                            flex: 1,
                            child: widget3,
                            //  Image.asset("/assets/images/veg.jpg"),
                          ),
                          Expanded(
                            flex: 1,
                            child: widget4,
                            //  Image.asset("/assets/images/veg.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                        alignment: Alignment.topRight,
                        height: w / 3.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Container(
                            //   margin: EdgeInsets.only(top: 10, bottom: 10),
                            //   child: Text("name",
                            //       style: TextStyle(
                            //           fontSize: 20, fontWeight: FontWeight.w800),
                            //       textAlign: TextAlign.center),
                            // ),

                            Container(
                              margin:
                                  EdgeInsets.only(top: 5, bottom: 5, right: 10),
                              child: Text(
                                txt1,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: richtxt2,
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                txt3,
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 78, 78, 78),
                                    fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    txt4,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  Text(
                                    txt5,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          onTap: ontap),
    );
  }
}

class NotifiCard extends StatelessWidget {
  Color color;
  var widget;
  String txt1;
  String txt2;
  String txt3;
  var icon;
  String richtxt4;
  Function() ontap;

  NotifiCard({
    super.key,
    required this.color,
    required this.widget,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.icon,
    required this.richtxt4,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
          child: SizedBox(
            height: w / 3.2,
            width: w,
            
            child: Card(
              color: color,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: widget,
                    //  Image.asset("/assets/images/veg.jpg"),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                        alignment: Alignment.topRight,
                        height: w / 3.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Container(
                            //   margin: EdgeInsets.only(top: 10, bottom: 10),
                            //   child: Text("name",
                            //       style: TextStyle(
                            //           fontSize: 20, fontWeight: FontWeight.w800),
                            //       textAlign: TextAlign.center),
                            // ),

                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    txt1,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      txt2,
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 78, 78, 78),
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    txt3,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: icon,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child:
                                  //    Text(richtxt4,
                                  //    overflow: TextOverflow.ellipsis,
                                  //     style: TextStyle(
                                  //      fontWeight: FontWeight.bold,
                                  //      color: Colors.black),
                                  //  )
                                  RichText(
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: richtxt4,
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          onTap: ontap),
    );
  }
}



class NotifiCard2 extends StatelessWidget {
  Color color;
  var widget;
  String txt1;
  String txt2;
  String txt3;
  var icon;
  String richtxt4;
  Function() ontap;

  NotifiCard2({
    super.key,
    required this.color,
    required this.widget,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.icon,
    required this.richtxt4,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
          child: Container(
            height: w / 3.7,
            width: w,
            margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Color.fromARGB(255, 208, 209, 209),
                offset: Offset(0, 1.5),
                blurRadius: 4,
              )]
            ),
            child: Card(
              color: color,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: widget,
                      //  Image.asset("/assets/images/veg.jpg"),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                          alignment: Alignment.topRight,
                          height: w / 3.2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                     
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                ReTextNormalSize(text: txt1,size: 11),
                                ReSubTextSmall(text: txt2)
                                 
                                  
                                ],
                              ),
                        
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReTextSize(text: txt3, size: 10)
                               
                                ],
                              ),
                              Flexible(
                                child: RichText(
                                    // overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: "cairo",
                                    fontSize: 10,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: richtxt4,
                                    ),
                                  ]),
                                  ),
                              ),
                            ],
                          )),
                    ),
                       Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: icon,
                                    ),
                  ],
                ),
              ),
            ),
          ),
          onTap: ontap),
    );
  }
}
