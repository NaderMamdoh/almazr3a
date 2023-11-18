// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'ActivationSplashScreen.dart';
import 'components/buttons.dart';
import 'components/colors.dart';
import 'components/text.dart';


class ActivationScreen extends StatefulWidget {
  ActivationScreen({Key? key,})
      : super(key: key);

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();

}

class _ActivationScreenState extends State<ActivationScreen> {
  @override
  Widget build(BuildContext context) {
    // double? height;
    // double? width;
    TextEditingController? contrller1;
    TextEditingController? contrller2;
    TextEditingController? contrller3;
    TextEditingController? contrller4;
    TextEditingController? contrller5;
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(vertical: 70),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 30,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       ReTextNormalSize(text: "تفعيل حسابي",size: 16,),
                          ReSubTextSize(text: "برجاء إدخال رمز التحقق المرسل إلى رقم هاتفك ",size:12),
                     
                     SizedBox(
                height: 10,
              ),
                       ReTextNormalSize(
                      text: "1011729301 20+",
                      size: 16,
                    ),
                     ],
                   ),
                  ],
                ),
              ),
             
              SizedBox(
                height: 50,
              ),
              
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal:16),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldOTP(
                          first: true, last: false, controllerr: contrller1),
                      textFieldOTP(
                          first: false, last: false, controllerr: contrller2),
                      textFieldOTP(
                          first: false, last: false, controllerr: contrller3),
                      textFieldOTP(
                          first: false, last: false, controllerr: contrller4),
                      textFieldOTP(
                          first: false, last: true, controllerr: contrller5),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 35,),
              Center(child: ReTextNormalSizeColor(
                text: "60:00",
              color: green,
              size: 16,)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReTextNormalSize(
                      text: "لم تستلم الرمز ؟",
                      size: 12,
                    ),
                   
                    ReTextButton(
                      size: 12,
                      text: "إعادة إرسال الرمز",
                      onpressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: w / 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Button3(
                    color: green,
                    route: () {
                      Get.to(ActivationSplashScreen());
                    },
                    txt: "تفعيل الحساب",
                    ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget textFieldOTP({bool? first, last, TextEditingController? controllerr}) {

    return Container(
       decoration: BoxDecoration(
          color: lightgrey,
          borderRadius: BorderRadius.circular(10)),
       height: MediaQuery.of(context).size.shortestSide * 0.13,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controllerr,
          autofocus: true,
          // onChanged: (value) {
          //   if (value.length == 1 && last == false) {
          //     FocusScope.of(context).nextFocus();
          //   }
          //   if (value.length == 0 && first == false) {
          //     FocusScope.of(context).previousFocus();
          //   }
          // },

          showCursor: true,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            counter: Offstage(),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(width: 2, color: Colors.black54),
            //     borderRadius: BorderRadius.circular(12)),
            // focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(width: 2, color: Colors.black54),
            //     borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}







// class Otp extends StatefulWidget {
//   final String? phnNumber;
//   final String? code;
//   String? from;
//   Otp({Key? key, this.phnNumber, this.from, this.code}) : super(key: key);

//   @override
//   _OtpState createState() => _OtpState();
// }

// class _OtpState extends State<Otp> {
//   double? height;
//   double? width;
//   TextEditingController? contrller1;
//   TextEditingController? contrller2;
//   TextEditingController? contrller3;
//   TextEditingController? contrller4;
//   //   SendOtpRequest resend = SendOtpRequest();
//   //  SharedPreferences ? prefs;
//   // getSharedPreferences () async
//   //     {
//   //  prefs = await SharedPreferences.getInstance();
//   //  }
//   String Code = "";
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     contrller1 = TextEditingController();
//     contrller2 = TextEditingController();
//     contrller3 = TextEditingController();
//     contrller4 = TextEditingController();
//     //  getSharedPreferences();
//   }

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.height;
//     //  final verifyprovider = Provider.of<PostDataProvider>(context);
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         toolbarHeight: height! * 0.07802345,
//         titleSpacing: 0,
//         backgroundColor: Colors.red,
//         automaticallyImplyLeading: false,
//         leading: Padding(
//           padding: const EdgeInsets.only(
//             left: 8.0,
//           ),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Container(
//               color: Colors.transparent,
//               // child: Image.asset("assets/images/back_ic-1.png")
//             ),
//           ),
//         ),
//         // SizedBox(width: width!*0.001234,),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               height: height! / 15,
//               width: height! / 15,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(
//                     width: 2,
//                     color: Colors.black,
//                   )),
//               child: Padding(
//                 padding: const EdgeInsets.all(1.0),
//                 child: Container(
//                   height: height! / 11,
//                   width: height! / 11,
//                   decoration: BoxDecoration(
//                       //   image: const DecorationImage(
//                       //        image:
//                       //   AssetImage("assets/images/home_logo.png"),
//                       //     fit: BoxFit.fill
//                       // ),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         width: 1,
//                         color: Colors.black,
//                       )),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: width! * 0.04234,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 8.0),
//               child: Text(
//                 "Verification",
//                 // style: GoogleFonts.oswald(fontWeight: FontWeight.bold,
//                 //     color: Colors.white,
//                 //     fontSize: width! * 0.03345
//                 // ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
//           child: Column(
//             children: [
//               Text(
//                 "We have send verification code on your mobile number",
//                 // style: GoogleFonts.oswald(fontStyle: FontStyle.normal,
//                 //     fontSize: width!*0.0234,
//                 // color: HexColor("#8b8b8b")),
//               ),
//               SizedBox(
//                 height: height! / 38,
//               ),
//               Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _textFieldOTP(
//                           first: true, last: false, controllerr: contrller1),
//                       _textFieldOTP(
//                           first: false, last: false, controllerr: contrller2),
//                       _textFieldOTP(
//                           first: false, last: false, controllerr: contrller3),
//                       _textFieldOTP(
//                           first: false, last: true, controllerr: contrller4),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: InkWell(
//                       onTap: () {
//                         //    resend.phoneNumber= widget.phnNumber;
//                         //    resend.countryCode = widget.code;
//                         //    verifyprovider.resendOtp(context,
//                         //  jsonEncode(resend));
//                       },
//                       child: Text(
//                         "Resend OTP?",
//                         // style: GoogleFonts.oswald(fontStyle:
//                         //     FontStyle.normal,
//                         //     fontSize: width!*0.0234,
//                         //     color: HexColor("#fc4f00")),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: height! / 28,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       //       if(contrller1!.text.isNotEmpty&&
//                       //      contrller2!.text.isNotEmpty&&contrller3!.
//                       //  text.isNotEmpty&&contrller4!.text.isNotEmpty){
//                       //         verifyOtpRequest verify = verifyOtpRequest();
//                       //         verify.phoneNumber = widget.phnNumber;
//                       //         verify.otp=
//                       //        contrller1!.text+contrller2!.
//                       //       text+contrller3!.text+contrller4!.text;
//                       //         verifyprovider.otpVerification(context,
//                       //       jsonEncode(verify), widget.from);
//                       //       }else{
//                       //         CommonUtils.showToast(msg: "Please fill all the
//                       //       fields ");
//                       //       }
//                     },
//                     child: Container(
//                         height: height! / 18,
//                         width: width,
//                         decoration: BoxDecoration(
//                             color: Colors.black,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Center(
//                           child: Text(
//                             "Verify",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: width! * 0.02345),
//                           ),
//                         )),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _textFieldOTP(
//       {bool? first, last, TextEditingController? controllerr}) {
//     return Container(
//       height: height! / 12,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: controllerr,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.black54),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.black54),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
// }
