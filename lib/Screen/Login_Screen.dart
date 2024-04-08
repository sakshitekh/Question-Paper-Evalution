import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:qpe_project_screen/Screen/ongoing_exam_date.dart';
import 'package:sizer/sizer.dart';

import 'forget_password.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: 27.h,
                  width: 100.w,
                  child:Image.asset('assets/images/top design.png',fit: BoxFit.cover,),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Log In",
                            style: TextStyle(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff656565),
                              fontFamily: 'Mons',
                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.h),
                            child: Column(
                              children: [
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 220),
                                        child: Text(
                                          "Gmail ID",
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff232323),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, right: 15),
                                        child: TextFormField(
                                          controller: _mailController,
                                          decoration: InputDecoration(
                                              hintText: "Type your Gmail ID.",
                                              labelStyle: TextStyle(fontSize: 11.sp),
                                              prefixIcon: Icon(Icons.mail)
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please Enter Your Gmail ID";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      SizedBox(height:2.h),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 220),
                                        child: Text(
                                          "Password",
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff232323),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, right: 15,),
                                        child: TextFormField(
                                          controller: _passController,
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            hintText: "Type your Password",
                                            labelStyle: TextStyle(fontSize: 11.sp),
                                            prefixIcon: Icon(Icons.lock, color: Color(0xff232323)),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please Enter Your Password";
                                            }
                                            return null;
                                          },
                                        ),
                  
                                      ),
                                      SizedBox(height: 1.h,),
                                      GestureDetector(
                                        onTap: () {
                                          // Forget Password
                                          Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgotPassword()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 173),
                                          child: Text(
                                            "Forget Password?",
                                            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!.validate()) {
                                            // Perform login
                                            Navigator.push(context,MaterialPageRoute(builder: (context)=>OngoingExamDate()));
                                          }
                                        },
                                        child: Text(
                                          "Login",
                                          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Color(0xffFFFFFF)),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff5188CA),
                                        ),
                                      ),
                                      SizedBox(height: 1.h,),
                                      Text("Or Log In with",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w300),),
                                      SizedBox(height: 1.5.h,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          InkWell(
                                              onTap:(){},
                                              child: Logo(Logos.facebook_f,size: 3.h,)),
                                          SizedBox(width: 3.5.w,),
                                          InkWell(
                                              onTap: (){},
                                              child: Logo(Logos.google,size: 3.h,)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                  
                        ],
                      ),
                    ),
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.only(top: 587),
                  child: Container(
                    height: 27.h,
                    child: Image.asset('assets/images/bottom design.png'),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
