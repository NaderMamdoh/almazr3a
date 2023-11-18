// import 'package:animated_text_kit/animated_text_kit.dart';

// import 'package:animations/animations.dart';
// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, library_private_types_in_public_api
import 'dart:async';
import 'package:almazr3a/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/text.dart';


class ActivationSplashScreen extends StatefulWidget {
  @override
  _ActivationSplashScreenState createState() => _ActivationSplashScreenState();
}

class _ActivationSplashScreenState extends State<ActivationSplashScreen>
    with TickerProviderStateMixin {
  var loading=0;



  @override
  void initState() {
    super.initState();



    Timer(const Duration(milliseconds: 4000), () {
      setState(() {
      Navigator.pushAndRemoveUntil(context, PageTransition(loading==1? LoginScreen():LoginScreen()),(Route<dynamic> route) => false,);
        // Get.off(  loading==1? PageTransition(LoginScreen()):PageTransition(LoginScreen()));
          // Get.off(  PageTransition( LoginScreen():LoginScreen()));
          });
      });
    
  }

  // @override
  // void dispose() {
  //   super.dispose();

  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ));
    final double w = MediaQuery.of(context).size.width;

    return
          Scaffold(
           body:
           Column(children: [
            SizedBox(height: 50,),
            SizedBox(height: w/8,),
            Center(
             child: Icon(Icons.check_circle_rounded, color: Color(0xff45b22b) , size: 150,),
              
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: ReTextNormalSize(text: "تم تفعيل حسابك بنجاح",size: 16,)),
            ),
            Center(child: ReSubTextLarge(text: "شكراً لإنضمامك إلينا الأن يمكنك التمتع")),
            Center(child: ReSubTextLarge(text:"بجميع خدمات التطبيق")),
            SizedBox(height: w/6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: ReTextSize(
                size: 14,
                text: "...جاري تحويلك إلى الرئيسية")),
            ),

              ])
            
    );
  }
}



class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              parent: animation,
              
            );
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );


}


