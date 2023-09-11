
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/colors.dart';

Widget earningBar(int barHeightPercent){
  return Container(
    margin: EdgeInsets.only(right: 22.w),
    height:70.h,
    width:6.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: textSecondary
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: (70/100)*barHeightPercent.h,
          width: 6.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: white
          ),
        ),
      ],
    ),
  );

}