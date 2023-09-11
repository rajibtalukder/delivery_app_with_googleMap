import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:klio_delivery/constant/value.dart';
import 'package:klio_delivery/global_widgets/button_widgets.dart';
import 'package:klio_delivery/view/home/edit_profile_page.dart';
import 'package:klio_delivery/view/home/order_page.dart';

import '../../constant/colors.dart';

class RiderProfilePage extends StatefulWidget {
  const RiderProfilePage({Key? key}) : super(key: key);

  @override
  State<RiderProfilePage> createState() => _RiderProfilePageState();
}

class _RiderProfilePageState extends State<RiderProfilePage> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Get.to( OrderPage());
                  },
                  icon: Icon(Icons.arrow_back, color: black),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 350.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Stack(alignment: Alignment.topCenter, children: [
                    SizedBox(
                      height: 150.h,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        ),
                        child: Image.network(
                            'https://img.freepik.com/premium-'
                            'vector/food-delivery-by-bike-guy-rides-bicycle_174639'
                            '-1534.jpg?w=1480',
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      left: 110.w,
                      top: 100.h,
                      child: Container(
                        height: 100.h,
                        width: 100.h,
                        padding: EdgeInsets.all(5.w),
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, color: white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.r),
                          child: Image.network(
                              'https://img.freepik.com/free-photo/'
                              'front-view-crazy-emotional-young-guy-wearing-red-blouse'
                              '-hat-delivering-orders-yellow-background_179666-35777'
                              '.jpg?w=1380&t=st=1686569505~exp=1686570105~hmac=e93cb19df6'
                              'aa7deaeaf6688f1fccb9094e700b699dace2ed4166bd8117372c7a',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 110.w,
                        top: 200.h,
                        child: normalText('ALissa Mayer', black,
                            fontsize: fontMedium, fontW: FontWeight.w600)),
                    Positioned(
                        left: 120.w,
                        top: 225.h,
                        child: TextButton(
                          child: normalText('Edit Profile', primaryColor,
                              fontsize: fontSmall),
                          onPressed: () {
                            Get.to(EditProfilePage());
                          },
                        )),
                    Positioned(
                      left: 80.w,
                      top: 280.h,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              normalText('22', black,
                                  fontsize: fontMedium, fontW: FontWeight.w600),
                              normalText('Rides', textSecondary,
                                  fontsize: fontSmall, fontW: FontWeight.w600),
                            ],
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              normalText('5/5', black,
                                  fontsize: fontMedium, fontW: FontWeight.w600),
                              normalText('Rating', textSecondary,
                                  fontsize: fontSmall, fontW: FontWeight.w600),
                            ],
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              normalText('14', black,
                                  fontsize: fontMedium, fontW: FontWeight.w600),
                              normalText('Days', textSecondary,
                                  fontsize: fontSmall, fontW: FontWeight.w600),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      normalText('Dark Mode', black,
                          fontW: FontWeight.w600,fontsize: fontMedium),
                      Switch(
                        value: darkMode,
                        onChanged: (value){
                          setState(() {
                            darkMode=value;
                            applyThem(darkMode);
                          });
                        },
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
