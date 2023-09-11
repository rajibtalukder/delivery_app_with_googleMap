
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/view/home/home_widgets/custom_appbar.dart';
import 'package:klio_delivery/view/home/home_widgets/drawer.dart';

import '../../constant/colors.dart';
import '../../constant/value.dart';
import '../../global_widgets/button_widgets.dart';
import 'home_widgets/order_list_tile.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideDrawer(),
      backgroundColor: primaryBackground,
      body: Builder(
        builder: (context){
          return SafeArea(child: Padding(
            padding: EdgeInsets.all(20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customAppBar(context),
                SizedBox(height:20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    normalText('History', black, fontsize: fontVeryBig,fontW: FontWeight.w600),
                    normalText('Clear History', textSecondary,fontsize: fontSmall,fontW: FontWeight.w600)
                  ],
                ),
                SizedBox(height:10.h),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                        orderListTile(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ));
        },
      )
    );
  }
}
