import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sizer/sizer.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 27.h,
                          width: 100.w,
                          child: Image.asset(
                            'assets/images/top design.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 130.sp, left: 5.sp),
                          child: Container(
                            height: 70.h,
                            width: 100.w,
                            child: Column(
                              children: [
                                Text(
                                  "Register Now",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff656565),
                                    fontFamily: 'Mons',
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 4.h),
                                  child: Column(
                                    children: [
                                      Form(
                                        key: _formKey,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 220),
                                              child: Text(
                                                "Gmail ID",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff232323),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: TextFormField(
                                                controller: _mailController,
                                                decoration: InputDecoration(
                                                    hintText:
                                                    "Type your Gmail ID.",
                                                    labelStyle: TextStyle(
                                                        fontSize: 11.sp),
                                                    prefixIcon:
                                                    Icon(Icons.mail)),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Please Enter Your Gmail ID";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            SizedBox(height: 2.h),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 220,
                                              ),
                                              child: Text(
                                                "Mobile No",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff232323),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                              ),
                                              child: TextFormField(
                                                controller: _phoneController,
                                                decoration: InputDecoration(
                                                    hintText:
                                                    "Type your Contact No.",
                                                    labelStyle: TextStyle(
                                                        fontSize: 11.sp),
                                                    prefixIcon:
                                                    Icon(Icons.phone)),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Type your Contact No";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            SizedBox(height: 2.h),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 220),
                                              child: Text(
                                                "Password",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff232323),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                              ),
                                              child: TextFormField(
                                                controller: _passController,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  hintText:
                                                  "Type your Password",
                                                  labelStyle:
                                                  TextStyle(fontSize: 11.sp),
                                                  prefixIcon: Icon(Icons.lock,
                                                      color: Color(0xff232323)),
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Please Enter Your Password";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 140),
                                              child: Text(
                                                "Confirm Passward",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff232323),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                              ),
                                              child: TextFormField(
                                                controller:
                                                _confirmpassController,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  hintText:
                                                  "Type your confirm Passward",
                                                  labelStyle:
                                                  TextStyle(fontSize: 11.sp),
                                                  prefixIcon: Icon(Icons.lock,
                                                      color: Color(0xff232323)),
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Please Enter Your Password";
                                                  } else if (_passController !=
                                                      _confirmpassController) {
                                                    return "Please Enter Your Confirm Password";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Forget Password
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 172, top: 7),
                                                child: Text(
                                                  "Forget Password?",
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                      FontWeight.w300,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            ElevatedButton(
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  // Perform login
                                                }
                                              },
                                              child: Text(
                                                "Register",
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xffFFFFFF)),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                Color(0xff5188CA),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "Or Log In with",
                                              style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                    onTap: () {},
                                                    child: Logo(
                                                      Logos.facebook_f,
                                                      size: 3.h,
                                                    )),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                InkWell(
                                                    onTap: () {},
                                                    child: Logo(
                                                      Logos.google,
                                                      size: 3.h,
                                                    )),
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
                        Padding(
                          padding: EdgeInsets.only(top: 448.sp),
                          child: Container(
                            height: 27.02.h,
                            child: Image.asset(
                              'assets/images/bottom design.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
