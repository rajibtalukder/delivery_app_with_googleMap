import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/constant/value.dart';

import '../../../constant/colors.dart';
import '../../../global_widgets/button_widgets.dart';

Widget orderCard({Function()? onPress}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0.h),
    child: Card(
        color: white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  normalText('ORDER ID :', textSecondary,
                      fontW: FontWeight.w600),
                  normalText('# 434546', textSecondary, fontW: FontWeight.w600)
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: const Icon(
                      Icons.dinner_dining,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText('PICK-UP ORDER', textSecondary,
                          fontW: FontWeight.w600),
                      normalText('062 Kuhn Plains Suite 793', black,
                          fontsize: fontVerySmall, fontW: FontWeight.w600)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: const Icon(
                      Icons.home,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      normalText('DELIVER ORDER', textSecondary,
                          fontW: FontWeight.w600),
                      normalText('922 Wilfredo Tunnel', black,
                          fontsize: fontVerySmall, fontW: FontWeight.w600)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.create,
                        color: textSecondary,
                        size: 16.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      normalText('£54', black, fontW: FontWeight.w600)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: textSecondary,
                        size: 16.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      normalText('12:35', black, fontW: FontWeight.w600)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timeline_outlined,
                        color: textSecondary,
                        size: 16.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      normalText('1.5 km', black, fontW: FontWeight.w600)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              normalText('Comment', textSecondary,
                  fontsize: fontVerySmall, fontW: FontWeight.w600),
              normalText('Call when you will be near', black,
                  fontsize: fontVerySmall, fontW: FontWeight.w600),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                  onTap: onPress,
                  child: normalButton(
                      'PICK ORDER', 46, double.infinity, primaryColor, white))
            ],
          ),
        )),
  );
}
