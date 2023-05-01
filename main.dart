// import 'dart:js';

// import 'dart:js';





import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'view_crop_details.dart';
import 'signup_screen.dart';
import 'crop_details.dart';
import 'dashboard_producere.dart';
import 'dashboardlogistics.dart';
import 'dashboardwarehouse.dart';
import 'fleet_details.dart';
import 'general_qr_generator.dart';

import 'login_screen.dart';

import 'productdetails.dart';



import 'storage_details.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'login_screen',
    debugShowCheckedModeBanner: false,
    routes: {
      'login_screen' :(context)=>Mylogin(),

      'dashboard_producer' :(context)=>MydashboardProducer(),

      'signup_screen' :(context)=>MySignupscreen(),
      'dashboardwarehouse' :(context)=>Mydashboardwarehouse(),
      'dashboardlogistics' :(context)=>Mydashboardlogistics(),
      'productdetails' :(context)=>Myproductdetails(),

      'fleet_details' :(context)=>Myfleetdetails(),
      'general_qr_generator' :(context)=>Myqrgenerator(),
      'storage_details' :(context)=>Mystoragedetails(),
      'logistics_qr_generator' :(context)=>Myqrgenerator(),
      'crop_details' :(context)=>MyCropdetails(),
      'producer_qr_generator' :(context)=>Myqrgenerator(),
      'view_crop_details' :(context)=>Myviewcropdetails(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    );
  }
}





