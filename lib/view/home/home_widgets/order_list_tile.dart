import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:klio_delivery/global_widgets/button_widgets.dart';
import 'package:get/get.dart';
import 'package:klio_delivery/view/home/order_info_page.dart';

  Widget orderListTile() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.h),
      child: GestureDetector(
        onTap: (){
          Get.to(OrderInfoPage());
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            color: white,
            elevation: 0.0,
            child: Row(
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
                    normalText('Coffee & Drink', black, fontsize: 18.sp, fontW: FontWeight.w600),
                    Row(
                      children: [
                        normalText('6 items', textSecondary, fontsize: 14.sp, fontW: FontWeight.w600),
                        SizedBox(width: 80.w),
                        normalText('Jun 09, 2022', textSecondary, fontsize: 14.sp, fontW: FontWeight.w600)
                      ],
                    )
                  ],
                ),

              ],
            )
        ),
      ),
    );
}
