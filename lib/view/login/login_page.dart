import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/view/home/order_page.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../constant/value.dart';
import '../../global_widgets/button_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    applyThem(darkMode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// appbar .....start
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("klio.",
                          style: TextStyle(
                              fontSize: fontVeryBig,
                              color: primaryText,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.all(14.w),
                        child: topBarIconBtn(
                            Image.asset('assets/moon.png', color: primaryColor),
                            primaryBackground,
                            10.w,
                            25.r,
                            40.w, onPressed: () {
                          darkMode ? darkMode = false : darkMode = true;
                          applyThem(darkMode);
                          setState(() {});
                        }),
                      ),
                    ],
                  ),
                ),

                /// appbar .....end
                SizedBox(height: 150.h),
                Text(
                  'User Login',
                  style: TextStyle(
                      fontSize: fontVeryBig,
                      fontWeight: FontWeight.bold,
                      color: primaryText),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: 200.w,
                  child: Column(
                    children: [
                      Text('Enter your details to sign in to ',
                          style: TextStyle(
                              fontSize: fontVerySmall, color: textSecondary)),
                      Text('your user account',
                          style: TextStyle(
                              fontSize: fontVerySmall, color: textSecondary)),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                        child: TextFormField(
                            onChanged: (text) async {},
                            onEditingComplete: () async {},
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                fontSize: fontVerySmall, color: primaryText),
                            decoration: InputDecoration(
                              suffixIcon: Image.asset(
                                'assets/user.png',
                                color: textSecondary,
                              ),
                              hintText: "Username",
                              labelText: "Email Address",
                              labelStyle: TextStyle(color: textSecondary),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.r),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.r),
                                borderSide: BorderSide(color: textSecondary),
                              ),
                              hintStyle: TextStyle(
                                  fontSize: fontVerySmall, color: primaryText),
                            )),
                      ),
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 50.h,
                        child: TextFormField(
                            onChanged: (text) async {},
                            onEditingComplete: () async {},
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            style: TextStyle(
                                fontSize: fontVerySmall, color: primaryText),
                            decoration: InputDecoration(
                              suffixIcon: Image.asset(
                                'assets/hide.png',
                                color: textSecondary,
                              ),
                              hintText: "Password",
                              labelText: "Password",
                              labelStyle: TextStyle(color: textSecondary),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.r),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.r),
                                borderSide: BorderSide(color: textSecondary),
                              ),
                              hintStyle: TextStyle(
                                  fontSize: fontVerySmall, color: primaryText),
                            )),
                      ),
                      SizedBox(height: 30.h),
                      normalButton(
                          'Login', 46, double.infinity, primaryColor, white,
                          onPressed: () {
                        Get.offAll(OrderPage());
                      })
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
