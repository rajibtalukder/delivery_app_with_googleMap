
import 'package:flutter/material.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:get/get.dart';

import '../rider_profile_page.dart';

Widget customAppBar(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
          icon:Icon(Icons.menu),
          color: black,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }),
      IconButton(
        onPressed: (){
          Get.to(RiderProfilePage());
        },
        color: black,
        icon: Icon(Icons.person),)
    ],
  );
}