import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';

class OngoingExamDate extends StatefulWidget {
  const OngoingExamDate({Key? key}) : super(key: key);

  @override
  State<OngoingExamDate> createState() => _OngoingExamDateState();
}

class _OngoingExamDateState extends State<OngoingExamDate> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsForApp.appbarColor,
        title: Center(
          child: Text(
            "Welcome",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
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
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/images/arrow back.png'),
                  SizedBox(width: 10),
                  Text(
                    "Ongoing Exam Data",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Container(
                          height: 10.h,
                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                            border: Border(
                              top: BorderSide(
                                color: Colors.blueAccent.shade200,
                                width: 3,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "6th",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Exam name',
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffFFFFFF),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        'date',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'A',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: mediaquery.size.height * 0.3,
                          child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return ListTile(
                                contentPadding: EdgeInsets.symmetric(vertical: 0.1, horizontal: 25),
                                title: Text(
                                  "Subject Name",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
