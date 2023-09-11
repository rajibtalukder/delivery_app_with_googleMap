import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/view/home/home_widgets/earning_bar.dart';

import '../../../constant/colors.dart';
import '../../../constant/value.dart';
import '../../../global_widgets/button_widgets.dart';

Widget weeklyEarning(){
  return Container(
    padding: EdgeInsets.all(15.h),
    height: 160.h,
    width: double.infinity,
    decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20.r)),
    child: Row(
      children: [
        SizedBox(
            height: double.infinity,
            width: 180.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:25.h,
                  child: normalText('Weekly Earning', white,
                      fontsize: fontSmall),
                ),
                SizedBox(
                  height:25.h,
                  child: normalText('£ 8120.90', white,
                      fontsize: fontMedium, fontW: FontWeight.w600),
                ),
                SizedBox(height: 8.h,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      earningBar(50),
                      earningBar(60),
                      earningBar(40),
                      earningBar(80),
                      earningBar(30),
                      earningBar(70),
                      earningBar(90),
                    ],
                  ),
                )
              ],
            )

        ),
        SizedBox(width: 10.w),
        Expanded(
            flex:1,
            child: Container(
              padding: EdgeInsets.all(10.h),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: white,
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle
                      ),
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
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 35.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: primaryColor.withOpacity(0.1)
                        ),
                        child: Center(child: normalText('Profile', black))),
                      ),
                  ],
                ),
            ),
        ),
      ],
    ),
  );
}