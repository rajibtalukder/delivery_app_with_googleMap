import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:klio_delivery/constant/value.dart';
import 'package:klio_delivery/global_widgets/button_widgets.dart';
import 'package:klio_delivery/view/home/home_widgets/custom_appbar.dart';
import 'package:klio_delivery/view/home/home_widgets/drawer.dart';
import 'package:klio_delivery/view/home/home_widgets/weekly_earning_widget.dart';

import 'home_widgets/recent_earning_card.dart';

class EarningPage extends StatelessWidget {
  const EarningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: sideDrawer(),
        backgroundColor: primaryBackground,
        body: Builder(builder: (context) {
          return SafeArea(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20.w,20.w,20.w,0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customAppBar(context),
                SizedBox(height: 8.h),
                weeklyEarning(),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 35.h,
                  child: normalText('Recent Earning', black,
                      fontW: FontWeight.w600, fontsize: fontBig),
                ),
                SizedBox(height: 8.h),
                Expanded(

                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        for (int i = 0; i < 10; i++)  recentEarningCard(),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ));
        }));
  }

}
