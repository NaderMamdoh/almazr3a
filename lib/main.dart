// ignore_for_file: prefer_const_constructors, unused_import
import 'package:almazr3a/views/make_ads.dart';
import 'package:almazr3a/views/department.dart';
import 'package:almazr3a/views/home.dart';
import 'package:almazr3a/views/rest_details.dart';
import 'package:almazr3a/views/resturants.dart';
import 'package:almazr3a/views/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'views/add_ads.dart';
import 'views/advertisements.dart';
import 'views/categories.dart';
import 'views/details.dart';
import 'views/edit_ad.dart';
import 'views/flutterflow/my_ads.dart';
import 'views/inbox.dart';
import 'views/login_screen.dart';
import 'views/profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'المزرعة',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      //   useMaterial3: true,
      // ),
      // home: Profile(),
      // home: Details(),
      // home: Search(),
      // home: Restaurants(),
      // home: HomePageWidget(),

      // home: RestDetails(),
      // home: MakeAds(),
      // home: EditAds(),
      // home: Categories(),
      // home: Advertisements(),
      // home: Home(),
      // home: InBox(),
      // home: Department(),
      // MyAds(),
      // home: AddAds(),
      home: LoginScreen(),
      initialRoute: "/",
    );
  }
}
