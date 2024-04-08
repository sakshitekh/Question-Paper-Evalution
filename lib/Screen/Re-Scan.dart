import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ReScanScreen extends StatefulWidget {
  const ReScanScreen({super.key});

  @override
  State<ReScanScreen> createState() => _ReScanScreenState();
}

class _ReScanScreenState extends State<ReScanScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaquery=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontFamily: 'DM sanc',
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset('assets/images/appbar icon1.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset('assets/images/appbar icon2.png'),
          ),
        ],
        backgroundColor: Color(0xff5188CA),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
            child: Row(
              children: [
                Image.asset('assets/images/arrow back.png'),
                SizedBox(width: 10,),
                Text(
                  "Re-Scan",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 55,
                  width: mediaquery.size.width*0.854321235,
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
              ),

              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  child: Image.asset('assets/images/Group (1).png'),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Text("Exam Name"),
              Text("Class"),
              Text("Subject")
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 55,
              width: mediaquery.size.width*1,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,

                        ),
                        borderRadius: BorderRadius.circular(15)
                    )
                ),

              ),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: GridView.count(crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Card(
                    color: Colors.white,
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child:
                    Column(
                      children: [
                        Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color: Color(0xff5188CA),
                            borderRadius: BorderRadius.only(topRight:  Radius.circular(10),topLeft: Radius.circular(10)),

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Roll No",style: TextStyle(fontFamily: 'Popins',fontWeight: FontWeight.w300,fontSize: 14,color: Color(0xffFFFFFF)),),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      )

                                  ),
                                  child: Image.asset('assets/images/Right.png'),
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("Exam Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                              Text("Class",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              Text("Subject",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],),
            ),
          ),


        ],
      ),
    );
  }
}
