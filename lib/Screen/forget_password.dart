import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:qpe_project_screen/Screen/otp_verification.dart';
import 'package:sizer/sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _phoneController = TextEditingController();

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
                          padding: EdgeInsets.only(top: 142.sp, left: 5.sp),
                          child: Container(
                            height: 70.h,
                            width: 100.w,
                            child: Column(
                              children: [
                                Text(
                                  "Forget Password",
                                  style: TextStyle(
                                    fontSize: 19.sp,
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
                                  EdgeInsets.symmetric(horizontal: 4.h,vertical: 10.h),
                                  child: Column(
                                    children: [
                                      Form(
                                        key: _formKey,
                                        child: Column(
                                          children: [

                                            SizedBox(height: 2.h),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 220,
                                              ),
                                              child: Text(
                                                "Contact No",
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
                                                keyboardType: TextInputType.number,
                                                controller: _phoneController,
                                                decoration: InputDecoration(
                                                    hintText:
                                                    "Type your Contact No.",
                                                    hintStyle: TextStyle(
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

                                            SizedBox(
                                              height: 2.h,
                                            ),


                                            SizedBox(height: 20),
                                            ElevatedButton(
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  // Perform login
                                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpVerification()));
                                                }
                                              },
                                              child: Text(
                                                "Send OTP",
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
                                              height: 2.h,
                                            ),
                                            Text(
                                              "Or Log In with",
                                              style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(
                                              height: 2.h,
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
                                                  width: 3.5.w,
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
