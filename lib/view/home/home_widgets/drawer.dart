import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klio_delivery/view/home/earning_page.dart';
import 'package:klio_delivery/view/home/history_page.dart';
import 'package:klio_delivery/view/home/order_page.dart';
import 'package:klio_delivery/view/home/rating_page.dart';
import 'package:klio_delivery/view/login/login_page.dart';

import '../../../constant/colors.dart';
import '../../../constant/value.dart';
import '../../../global_widgets/button_widgets.dart';

Widget sideDrawer() {
  return Drawer(
      backgroundColor: primaryColor,
      child: SafeArea(
        child: Column(
            children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
            child: Text(
              'klio',
              style: TextStyle(fontSize: fontBig, color: white),
            ),
          ),
          ListTile(
            title: Text("All Orders",
                style: TextStyle(color: white, fontSize: fontVerySmall)),
            onTap: () {
              Get.offAll(OrderPage());
            },
            leading:  Icon(Icons.shopping_basket_outlined, color: white, size: 18,),
          ),
          ListTile(
            title: Text("History",
                style: TextStyle(color: white, fontSize: fontVerySmall)),
            onTap: () {
              Get.offAll(HistoryPage());
            },
            leading:  Icon(Icons.history, color: white,size: 18,),
          ),
          ListTile(
            title: Text("My Earning",
                style: TextStyle(color: white, fontSize: fontVerySmall)),
            onTap: () {
              Get.offAll(EarningPage());
            },
            leading:  Icon(Icons.currency_pound, color: white,size: 18,),
          ),
          ListTile(
            title: Text("My Rating",
                style: TextStyle(color: white, fontSize: fontVerySmall)),
            onTap: () {
              Get.offAll(RatingPage());
            },
            leading:  Icon(Icons.star_rate_rounded, color: white,size: 18,),
          ),
              ListTile(
                title: Text("Log Out",
                    style: TextStyle(color: white, fontSize: fontVerySmall)),
                onTap: () {
                  Get.offAll(LoginPage());
                },
                leading:  Icon(Icons.logout, color: white,size: 18,),
              ),
        ]),
      ));
}
