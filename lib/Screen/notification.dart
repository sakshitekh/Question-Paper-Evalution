import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qpe_project_screen/utils/app_color.dart';
import 'package:sizer/sizer.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<bool> isSelectedList = List.generate(15, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsForApp.appbarColor,
        title: Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
        leading: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 2.h,
          ),
          child: Image.asset('assets/images/appbar icon1.png'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Image.asset('assets/images/appbar icon2.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 0.4.h),
              child: Row(
                children: [
                  Image.asset('assets/images/arrow back.png'),
                  SizedBox(width: 10),
                  Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Container(
                    height: 5.876.h,
                    width: 70.w,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 3.h,
                      width: 7.w,
                      child: Image.asset(
                        'assets/images/Group (1).png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    child: Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelectedList[index] = !isSelectedList[index];
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                  height: 8.h,
                                  width: 10.w,
                                  decoration: BoxDecoration(
                                    color: isSelectedList[index]
                                        ? ColorsForApp.ButtonColor
                                        : ColorsForApp.backgroundTextField,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 1.h, horizontal: 1.h),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Re-Scan Request",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13.sp,
                                              ),
                                            ),
                                            Text(
                                              "Information",
                                              style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 12.w),
                                      Text(
                                        "View",
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                          color: isSelectedList[index]
                                              ? ColorsForApp.White
                                              : ColorsForApp.ButtonColor,
                                        ),
                                      ),
                                      SizedBox(width: 12.w),
                                      Text(
                                        "Date",
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          );
                        },
                      ),
                    ),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
