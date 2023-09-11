
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:klio_delivery/constant/value.dart';
import 'package:klio_delivery/controller/map_controller.dart';
import 'package:klio_delivery/view/home/home_widgets/drawer.dart';
import 'package:klio_delivery/view/home/home_widgets/order_card.dart';
import 'package:klio_delivery/view/home/picked_order_page.dart';

import '../../global_widgets/button_widgets.dart';
import 'home_widgets/custom_appbar.dart';

class OrderPage extends StatelessWidget {
   OrderPage({Key? key}) : super(key: key);
MapController mapController= Get.put(MapController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideDrawer(),
      backgroundColor: primaryBackground,
      body: Builder(
        builder: (context) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.w,20.w,20.w,0.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customAppBar(context),
                    SizedBox(height:20.h),
                    normalText('All Orders', black, fontsize: fontVeryBig,fontW: FontWeight.w600),
                    SizedBox(height:10.h),
                    Row(
                      children: [
                        normalText('Pickup Request', black, fontW: FontWeight.w600),
                        SizedBox(width: 20.w),
                        normalText('Delivery Request', textSecondary,fontW: FontWeight.w600)
                      ],
                    ),
                    SizedBox(height:20.h),
                    Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              orderCard(onPress: ()async{

                                await mapController.getCustomerPosition(adrs: 'Sylhet');
                                await mapController.getCurrentPosition();
                                //await mapController.getDirectionLine();

                                Get.to(PickedOrder());

                              }),
                              orderCard()
                            ],
                          ),
                        ),
                    )
                  ],
                ),
              ),
            );
        }
      )
    );
  }


}
