// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:almazr3a/views/components/textformfieldnew.dart';
import 'package:almazr3a/views/policy.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'HPbotBar.dart';
import 'activation_screen.dart';
import 'components/buttons.dart';
import 'components/colors.dart';
import 'components/text.dart';
import 'components/textForm.dart';
import 'forget_password.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller = TextEditingController();
    TextEditingController password = TextEditingController();
  late TapGestureRecognizer changesigin;
  bool showsignin = true;

    bool ?passwordVisible ;
  @override
  void initState() {
    super.initState();
    passwordVisible = false;
    changesigin = TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          showsignin = !showsignin;
        });
      };
  }




  @override
  Widget build(BuildContext context) {
  //  double w = MediaQuery.of(context).size.width;
GlobalKey<FormState> formstate =  GlobalKey<FormState>();
send(){
  var formdata= formstate.currentState;
  if (formdata!.validate()) {
    Get.to(()=>ActivationScreen());
  }
  return print("not valid");
}
  final ValueNotifier<TextDirection> textdir =
      ValueNotifier(TextDirection.rtl);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            
            body: NestedScrollView(
              
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[SliverAppBar(
              primary: true,
              toolbarHeight: 156,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomRight: Radius.circular(100),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(100),
              )),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  bottomRight: Radius.circular(100),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(100),
                )),
              ),
              centerTitle: true,
              backgroundColor: green,
              title: Container(
                height: 99,
                width: 69,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Image.asset(
                  'assets/logo/1.png',
                  color: Colors.white,
                ),
              ),
            )] ;
            },
              body:
             
                Container(
                  child: ListView(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReTextNormalSize(
                              text: "مرحبا بك في تطبيق مزرعة!", size: 14),
                          showsignin
                              ? ReSubText(text: "من فضلك سجل الدخول للمتابعة...")
                              : ReSubText(
                                  text:
                                      "من فضلك ادخل البيانات المطلوبة لإنشاء حساب جديد..."),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        showsignin
                            ? ReTextBold(text: "تسجيل الدخول")
                            : ReTextBold(text: "إنشاء حساب جديد")
                      ],
                    ),
                    showsignin
                        ? Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReTextNormalSize(text: "اسم المستخدم",size:11),
                                SizedBox(
                                  height: 10,
                                ),
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: ReTextFormFieldSuffix(
                                    controller: TextEditingController(),
                                    text: 'إكتب اسمك الثنائي',
                                    image: "assets/logo/3.svg",
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ReTextNormalSize(text: "كلمة المرور",size:11),
                                SizedBox(
                                  height: 10,
                                ),
                                Directionality(
                                  
                                  textDirection: TextDirection.ltr,
                                  child: 
                                  // ReTextFormFieldSuffix_Prefix(
                                    TextForm3(
                                    obscureText: !passwordVisible!,
                                    text: 'إكتب كلمة المرور',
                                    image: "assets/logo/11.svg",
                                    controller: controller,
                                    preicon: IconButton(onPressed: (){
                                      // setState(() {
                                       if (passwordVisible==false) {
                                         setState(() {
                                           passwordVisible = true;
                                         });
                                       } else {
                                          setState(() {
                                           passwordVisible = false;
                                         });
                                       }
                                        
                                      // });
            
                                    }, 
                                    icon: passwordVisible! ? Icon(Icons.visibility_off_outlined):Icon(Icons.visibility_outlined)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(20),
                            child: Form(
                              key: formstate,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ReTextNormal(text: "الأسم الشخصي*"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReTextFormField(
                                    controller: TextEditingController(),
                                    text: 'الأسم',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReTextNormal(text: "اسم المستخدم*"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReTextFormField(
                                    controller: TextEditingController(),
                                    text: 'اسم المستخدم',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReTextNormal(text: "رقم الهاتف المحمول*"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReTextFormField(
                                    controller: TextEditingController(),
                                    text: 'اكتب رقم هاتفك المستخدم',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ReTextNormal(text: " البريد الإلكتروني"),
                                      ReTextNormal(
                                        text: "(إختياري)",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReTextFormField(
                                    controller: TextEditingController(),
                                    text: 'اكتب بريدك الإلكتروني',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReTextNormal(text: "كلمة المرور*"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // ReTextFormField(
                                  //   text: 'اكتب كلمة المرور',
                                  //   controller: TextEditingController(),
                                  // ),
                                  ValueListenableBuilder<TextDirection>(
                                    valueListenable: textdir,
                                    builder: (context, value, child) =>
                                    TextFormField(
                                      validator: (value) {
                                        if (value!.length  < 8) {
                                          return "يجب أن يكون 8 أحرف على الأقل";
                                        } 
                                        // if(value.isAlphabetOnly && value.isNumericOnly) {
                                        //   return "#@!%^& يجب أن يحتوي على أرقام وحروف ورموز مثل";
                                        // }
                                        return null;
                                      },
                                       controller: password,
                                        cursorColor: Colors.green,
                                           style: TextStyle(fontFamily: "cairo", fontSize: 12),
                                          textDirection: value,
                                                    onChanged: (input) {
                                                      if (input.trim().length < 2) {
                                                        final dir = getdirection(input);
                                                        if (dir != value) textdir.value = dir;
                                                        }
                                                    },
                                        decoration: InputDecoration(
                                           focusedBorder:OutlineInputBorder(
                                           borderSide: BorderSide(color: green)
                                           ) ,
                                          filled: true,
                                          fillColor: lightgrey,
                                  
                                          hintText: 'اكتب كلمة المرور',
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
                                  )
                                ],
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 5,
                    ),
                    showsignin
                        ? Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Checkbox(
                                      value: false,
                                      onChanged: (value) => true,
                                    ),
                                    ReTextNormal(text: "تذكرني"),
                                  ],
                                ),
                                ReTextButton(
                                  size:10,
                                  text: "هل نسيت كلمة السر؟",
                                  onpressed: () {
                                    Get.to(ForgetPassword());
                                  },
                                ),
                              ],
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 16)),
                                  Icon(Icons.check_circle_rounded, color: green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ReTextSize(
                                    text: "يجب ألا يحتوي على اسمك ورقم هاتفك",
                                    size: 10,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 16)),
                                  Icon(Icons.check_circle_rounded, color: green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ReTextSize(text: "8 احرف على الاقل",size:10),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 16)),
                                  Icon(Icons.check_circle_outline_rounded,
                                      color: lightgrey),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ReSubTextSize(
                                    text: "حروف كبيرة وصغيرة ورموز مثل #@!%^&*",
                                    size: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: ReTextNormal(
                                      text: "إعادة كتابة كلمة المرور",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16.0),
                                child: ReTextFormField(
                                  text: 'اكتب كلمة المرور',
                                  controller: TextEditingController(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Container(
                                  // width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ReTextNormal(
                                        text: "عند تسجيلك فأنت توافق على",
                                      ),
                                        ReTextButton(
                                          size:12,
                                        text: "الشروط والأحكام لتطبيق المزرعة",
                                        onpressed: () {
                                          Get.to(Policy());
                                        },
                                         ),
                                      // Flex(
                                      //   direction: Axis.horizontal,
                                      //   children: [
                                      //     ReTextButton(
                                      //       text: " الشروط والأحكام لتطبيق المزرعة",
                                      //       onpressed: () {
                                      //         Get.to(Policy());
                                      //       },
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                    showsignin
                        ? Button(
                            padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 7),
                            height: 48,
                            width: 327,
                            color: green,
                            shadowColor: Colors.grey,
                            route: () {
                              Get.offAll(HomePage());
                            },
                            txt: "تسجيل الدخول",
                            txtColor: Colors.white)
                        : Button(
                            padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 7),
                            height: 48,
                            width: 327,
                            color: green,
                            shadowColor: Colors.grey,
                            route: () {
                              send();
                              // Get.to(ActivationScreen());
                            },
                            txt: "إنشاء حساب جديد",
                            txtColor: Colors.white),
                    showsignin
                        ? Button(
                            padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 7),
                            height: 48,
                            width: 327,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            shadowColor: Colors.grey,
                            route: () {
                              Get.off(HomePage());
                            },
                            txt: "الدخول كزائر",
                            txtColor: Colors.black)
                        : Text(""),
                    showsignin
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ReTextNormalSize(
                                size: 12,
                                text: "ليس لديك حساب ؟",
                              ),
                              ReTextButton(
                                size:12,
                                text: "إنشاء حساب جديد",
                                onpressed: () {
                                  setState(() {
                                    showsignin = !showsignin;
                                  });
                                },
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ReTextNormal(
                                text: " لديك حساب ؟",
                              ),
                              ReTextButton(
                                size: 12,
                                text: "سجل الدخول",
                                onpressed: () {
                                  setState(() {
                                    showsignin = true;
                                  });
                                },
                              ),
                            ],
                          )
                  ]),
                ),
              
            )));
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




