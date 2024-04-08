import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';
import 'Login_Screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds:3), () {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 10.h),
           child: Container(
             child: Column(
               children: [
                 Image.asset('assets/images/splash screen.png'),
                 Text("Question Paper",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w900,color: ColorsForApp.ButtonColor),),
                 Text("Evaulation",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w900,color: ColorsForApp.ButtonColor),),

               ],
             ),
           ),
         )
       ],
     ),
    );
  }
}

