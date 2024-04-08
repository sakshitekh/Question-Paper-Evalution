import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _mobileNoController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: mediaQuery.size.height * 0.31,
              width: mediaQuery.size.width * 1,
              child: Image.asset('assets/Vector 16.png'),
            ),
            Text(
              "Log In",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xff656565),
                fontFamily: 'Mons',
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 220, top: 10),
                    child: Text(
                      "Mobile No",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff232323),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: TextFormField(
                      controller: _mobileNoController,
                      decoration: InputDecoration(
                        labelText: "Type your Mobile No",
                        prefixIcon: Icon(Icons.account_circle_outlined, color: Color(0xff232323)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Your Mobile No";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff232323),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: TextFormField(
                      controller: _passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Type your Password",
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
                  GestureDetector(
                    onTap: () {
                      // Forget Password
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 200,top: 10),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200, color: Color(0xff232323)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform login
                      }
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xffFFFFFF)),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5188CA),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Or Log In with",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/download.png', height: 25, width: 25),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/facebook.jpeg', height: 25, width: 25),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/google logo.png', height: 55, width: 55),
                ),
              ],
            ),
            Container(
              height: mediaQuery.size.height * 0.31,
              width: mediaQuery.size.width * 1,
              child: Image.asset('assets/Vector 17.png'),
            ),
          ],
        ),
      ),
    );
  }
}
