import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qpe_project_screen/utils/app_color.dart';
import 'package:sizer/sizer.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsForApp.appbarColor,
        title: Center(child: Text("Welcome",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.white),)),
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h,),
          child: Image.asset('assets/images/appbar icon1.png'),
        ),
        actions: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 3.h),
            child: Image.asset('assets/images/appbar icon2.png'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h,horizontal:3.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/arrow back.png',),
                  SizedBox(width: 3.h,),
                  Text("My Profile",style: TextStyle(fontSize: 3.h,fontWeight: FontWeight.w400),)
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Container(
                    height: 6.h,
                    width: 75.w,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
          
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 6.w,),
                  Container(
                    child: Image.asset('assets/images/Group (1).png'),
                  )
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          height: 14.h,
                          width: 15.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ColorsForApp.ContainerColor,
                          ),
                        ),
                        Positioned(
                          left: 13.h,
                          top: 9.5.h,
                          child: Container(
                            height: 3.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                              color: Colors.white
                            ),
                            child: Center(child: Image.asset('assets/images/solar_camera-bold-duotone.png')),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 1.2.h),
                child: Column(
                  children: [
                    Card(
                      color: ColorsForApp.backgroundTextField,
                      elevation: 2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "First Name",
                            contentPadding: EdgeInsets.only(left: 12),
                            hintStyle: TextStyle(
                              fontSize: 12.sp,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Card(
                      elevation: 2,
                      color: ColorsForApp.backgroundTextField,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Date Of Birth",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                          ),
                          contentPadding: EdgeInsets.only(left: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Card(
                      elevation: 2,
                      color: ColorsForApp.backgroundTextField,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Scanner I’d No",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                          ),
                          contentPadding: EdgeInsets.only(left: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Card(
                      elevation: 2,
                      color: ColorsForApp.backgroundTextField,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Last Name",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                          ),
                          contentPadding: EdgeInsets.only(left: 12),

                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Card(
                      elevation: 2,
                      color: ColorsForApp.backgroundTextField,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                          ),
                          contentPadding: EdgeInsets.only(left: 12),

                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Card(
                      elevation: 2,
                      color: ColorsForApp.backgroundTextField,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Contact No.",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                          ),
                          contentPadding: EdgeInsets.only(left: 12),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
                ElevatedButton(
          onPressed: () {
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(ColorsForApp.ButtonColor),
          ),
          child: Text('Save',style: TextStyle(fontSize: 15.sp,color: Colors.white,fontWeight: FontWeight.w500),),
          ),
          
                ],
          ),
        ),
      ),
    );
  }
}
