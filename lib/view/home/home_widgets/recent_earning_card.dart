import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/colors.dart';
import '../../../constant/value.dart';
import '../../../global_widgets/button_widgets.dart';

Widget recentEarningCard(){
  return Container(
    padding: EdgeInsets.all(10.h),
    margin: EdgeInsets.only(bottom: 10.h),
    height: 80.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color: white,
    ),
    child: Row(
      children: [
        SizedBox(
          height: 50.h,
          width: 50.h,
          child: Image.asset('assets/credit-card.png',color: black, fit: BoxFit.cover),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: normalText('Dao Heng Bank', black,
                  fontW: FontWeight.w600, fontsize: fontSmall),
            ),
            SizedBox(
              child: normalText('14 January, 2023', textSecondary,
                  fontsize: fontVerySmall),
            ),
          ],
        ),
        SizedBox(width: 20.w),
        normalText('£ 4500.90', primaryColor,
            fontW: FontWeight.w600, fontsize: fontSmall),
      ],
    ),
  );
}