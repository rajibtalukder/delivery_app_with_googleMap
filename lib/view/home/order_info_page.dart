
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:get/get.dart';

import '../../constant/value.dart';
import '../../global_widgets/button_widgets.dart';

class OrderInfoPage extends StatelessWidget {
  const OrderInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: (){
                    Get.back();
                  },
                  icon:  Icon(Icons.arrow_back,color: black),
              ),
              SizedBox(height:20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  normalText('Order Information', black, fontsize: fontVeryBig,fontW: FontWeight.w600),
                  normalText('ID: 003354', textSecondary,fontsize: fontSmall,fontW: FontWeight.w600),
                ],
              ),
              SizedBox(height:20.h),
              Container(
                padding: EdgeInsets.all(20.w),
                height:400.h,
                width:360.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 80.h,
                          width: 70.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Image.network('https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            normalText('Coffee & Drink', black, fontsize: 20.sp, fontW: FontWeight.w600),
                            normalText('6 items', textSecondary, fontsize: 16.sp, fontW: FontWeight.w600),
                            // normalText('Jun 09, 2022', textSecondary, fontsize: 14.sp, fontW: FontWeight.w600)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height:20.h),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: black,),
                        SizedBox(width: 10.w),
                        normalText('76A Eighth Avenue \nAndora Mercy, New York, USA',
                            black, fontsize: fontVerySmall, fontW: FontWeight.w600)
                      ],
                    ),
                    SizedBox(height:10.h),
                    Row(
                      children: [
                        Icon(Icons.person, color: black,),
                        SizedBox(width: 10.w),
                        normalText('Beatrice Owen',
                            black, fontsize: fontVerySmall, fontW: FontWeight.w600)
                      ],
                    ),
                    SizedBox(height:10.h),
                    Row(
                      children: [
                        Icon(Icons.phone, color: black,),
                        SizedBox(width: 10.w),
                        normalText('+447975777666',
                            black, fontsize: fontVerySmall, fontW: FontWeight.w600)
                      ],
                    ),
                    SizedBox(height:20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        normalText('Subtotal(1 item) :', black,
                            fontsize: fontVerySmall, fontW: FontWeight.w600),
                        normalText('£ 2.9',black,
                            fontsize: fontVerySmall, fontW: FontWeight.w600),
                      ],
                    ),
                    SizedBox(height:10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        normalText('Ship Fee(2.4 km) :', black,
                            fontsize: fontVerySmall, fontW: FontWeight.w600),
                        normalText('£ 1.3',black,
                            fontsize: fontVerySmall, fontW: FontWeight.w600),
                      ],
                    ),
                    SizedBox(height:10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        normalText('Total :', primaryColor,
                            fontsize: fontSmall, fontW: FontWeight.w600),
                        normalText('£ 4.2',primaryColor,
                            fontsize: fontSmall, fontW: FontWeight.w600),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height:20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  normalButton('Rating', 46, 150, white, black),
                  normalButton('Re-Order', 46, 150, primaryColor, white),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
