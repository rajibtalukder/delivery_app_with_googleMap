import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:klio_delivery/constant/value.dart';
import 'package:klio_delivery/global_widgets/button_widgets.dart';

import '../constant/colors.dart';

Future<void> showCustomDialog(BuildContext context, String title, Widget widget,
    int heightReduce, int widthReduce,
    {bool reducePop = false}) async {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
          backgroundColor: primaryBackground,
          child: Container(
            width: widthReduce.w,
            height: heightReduce.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: secondaryBackground,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: normalText(title, black,
                        fontsize: fontSmall, fontW: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10.h),
                Expanded(
                  child: widget,
                ),
              ],
            ),
          ));
    },
  );
}

void showWarningDialog(String message, {Function()? onAccept}) {
  Get.dialog(
    AlertDialog(
      backgroundColor: alternate,
      title: Row(
        children: [
          Icon(
            Icons.warning,
            color: Colors.orange,
          ),
          Text(' Warning!', style: TextStyle(color: primaryText)),
        ],
      ),
      content: Text(message, style: TextStyle(color: primaryText)),
      actions: [
        TextButton(
          onPressed: onAccept,
          child: Text("Yes"),
        ),
        TextButton(
          child: Text(
            "No",
            style: TextStyle(color: textSecondary),
          ),
          onPressed: () => Get.back(),
        ),
      ],
    ),
  );
}
