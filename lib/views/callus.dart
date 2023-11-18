// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'HPbotBar.dart';
import 'components/card.dart';
import 'components/text.dart';

class CallUs extends StatelessWidget {
   CallUs({super.key});

String phone="+201288964999";
final instagram=Uri.parse('https://www.instagram.com/');
final gmail=Uri.parse('https://www.gmail.com');
final whatsapp=Uri.parse('https://www.whatsapp.com');
final twitter=Uri.parse('https://www.twitter.com');


  @override
  Widget build(BuildContext context) {
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
                                  Get.offAll(HomePage());
                                },
                                icon: Icon(Icons.arrow_circle_right_outlined,
                                    size: 30, color: Colors.black)),
                            ReTextSize(text: "إتصل بنا", size:14),
                          ],
                        ),
                       
                      ]),
                ],
              ),
    
          ),
        body:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  children: <Widget>[
                   
                    CustomCard2png(
                      image: "assets/instagram.png",
                      route: () {
                        launchUrl(
                          instagram,
                          mode: LaunchMode.inAppWebView,
                        );
                      },
                      title: "إنستغرام",
                    ),
                    CustomCard2png(
                      image: "assets/twitter.png",
                      route: () {
                        launchUrl(
                          twitter,
                          mode: LaunchMode.inAppWebView,
                        );
                      },
                      title: "تويتر",
                    ),
                    CustomCard2png(
                      image: "assets/whatsapp.png",
                      route: () {
                       
                      },
                      title: "واتساب",
                    ),
                    CustomCard2png(
                      image: "assets/mail.png",
                      route: () {
                        launchUrl(
                          gmail,
                          mode: LaunchMode.inAppWebView,
                        );
                      },
                      title: "ارسل إيميل",
                    ),CustomCard2png(
                      image: "assets/call.png",
                      route: () async{
                       final url = Uri(scheme: 'tel', path: phone);
                       if(await canLaunchUrl(url)){
                        launchUrl(url);
                       }
                      },
                      title: "اتصل بنا",
                    ),
                   
                    ]
              ),
        ),
    ));
  }
}