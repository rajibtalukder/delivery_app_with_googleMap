import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/value.dart';
import '../constant/colors.dart';

Widget sideBarIconBtn(String imagePath, Color color, {Function()? onPressed}) {
  return IconButton(
    icon: Image.asset(
      imagePath,
      color: color,
    ),
    onPressed: onPressed,
  );
}


Widget topBarIconBtn(
    Image image, Color background, double padding, double radius, double size,
    {Function()? onPressed}) {
  return SizedBox(
    height: size,
    width: size,
    child: MaterialButton(
        elevation: 0,
        color: background,
        padding: EdgeInsets.all(padding),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: image),
  );
}


Widget normalButton(String text, double height, double width, Color background, Color textColor,
    {Function()? onPressed}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
        height: height.h,
      width: width.w,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(40.r),
            ),
        child: Center(
          child: Text(text,
            style: TextStyle(color: textColor, fontSize: fontSmall, fontWeight: FontWeight.w600),),
        )),
  );
}
Widget normalText(String text, Color color, {double? fontsize, FontWeight? fontW}){
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: fontW,
    ),
  );
}

