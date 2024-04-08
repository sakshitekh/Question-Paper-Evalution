import 'package:flutter/material.dart';
import 'package:qpe_project_screen/sing_in.dart';
import 'package:sizer/sizer.dart';

import 'Screen/Re-Scan.dart';
import 'Screen/Login_Screen.dart';
import 'Screen/Registration.dart';

import 'Screen/forget_password.dart';
import 'Screen/my_profile_screen.dart';
import 'Screen/new_password.dart';
import 'Screen/notification.dart';
import 'Screen/ongoing_exam_date.dart';
import 'Screen/otp_verification.dart';
import 'Screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
       builder: (context, orientation, deviceType)
    {
    return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),
    home:SplashScreen(),
    );
  }
    );
  }
}


