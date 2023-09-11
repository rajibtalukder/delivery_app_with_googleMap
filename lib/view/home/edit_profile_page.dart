import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:klio_delivery/controller/edit_profile_controller.dart';
import 'package:klio_delivery/global_widgets/button_widgets.dart';
import 'package:klio_delivery/global_widgets/popup_widgets.dart';

import '../../constant/value.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);

  EditProfileController editProCtlr = EditProfileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBackground,
        appBar: AppBar(
          backgroundColor: primaryBackground,
          elevation: 0.0,
          leading: BackButton(color: black),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(children: [
                    Obx(() => Container(
                          padding: EdgeInsets.all(5.w),
                          height: 150.h,
                          width: 150.h,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.r),
                              child: editProCtlr.selectImagePath.value.isEmpty
                                  ? Image.network(
                                      'https://img.freepik.com/free-photo/'
                                      'front-view-crazy-emotional-young-guy-wearing-red-blouse'
                                      '-hat-delivering-orders-yellow-background_179666-35777'
                                      '.jpg?w=1380&t=st=1686569505~exp=1686570105~hmac=e93cb19df6'
                                      'aa7deaeaf6688f1fccb9094e700b699dace2ed4166bd8117372c7a',
                                      fit: BoxFit.cover)
                                  : Image.file(
                                      File(editProCtlr.selectImagePath.value),
                                      fit: BoxFit.cover)),
                        )),
                    Positioned(
                      left: 75.w,
                      child: GestureDetector(
                        onTap: () {
                          showCustomDialog(context, 'Choose Option',
                              selectImageOption(), 180, 150);
                          //editProCtlr.getProfileImage(ImageSource.camera);
                        },
                        child: Container(
                          height: 48.h,
                          width: 48.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryBackground,
                          ),
                          padding: EdgeInsets.all(3.w),
                          child: CircleAvatar(
                            radius: 20.r,
                            child: const Icon(Icons.camera_alt_outlined),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20.h),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 60.h,
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: TextFormField(
                          style: TextStyle(
                              fontSize: fontVerySmall, color: primaryText),
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.person, color: textSecondary),
                            hintText: "Enter Name",
                            labelText: "Name",
                            labelStyle: TextStyle(color: textSecondary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide(color: textSecondary),
                            ),
                            hintStyle: TextStyle(
                                fontSize: fontVerySmall, color: primaryText),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.h,
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: TextFormField(
                          style: TextStyle(
                              fontSize: fontVerySmall, color: primaryText),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,
                                color: textSecondary),
                            hintText: "Enter Email",
                            labelText: "Email",
                            labelStyle: TextStyle(color: textSecondary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide(color: textSecondary),
                            ),
                            hintStyle: TextStyle(
                                fontSize: fontVerySmall, color: primaryText),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.h,
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                              fontSize: fontVerySmall, color: primaryText),
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.person, color: textSecondary),
                            hintText: "Enter Password",
                            labelText: "Password",
                            labelStyle: TextStyle(color: textSecondary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide(color: textSecondary),
                            ),
                            hintStyle: TextStyle(
                                fontSize: fontVerySmall, color: primaryText),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.h,
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: TextFormField(
                          style: TextStyle(
                              fontSize: fontVerySmall, color: primaryText),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.call, color: textSecondary),
                            hintText: "Enter Phone",
                            labelText: "Phone",
                            labelStyle: TextStyle(color: textSecondary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide(color: textSecondary),
                            ),
                            hintStyle: TextStyle(
                                fontSize: fontVerySmall, color: primaryText),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.h,
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: TextFormField(
                          style: TextStyle(
                              fontSize: fontVerySmall, color: primaryText),
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.location_on, color: textSecondary),
                            hintText: "Enter Address",
                            labelText: "Address",
                            labelStyle: TextStyle(color: textSecondary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide(color: textSecondary),
                            ),
                            hintStyle: TextStyle(
                                fontSize: fontVerySmall, color: primaryText),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: normalButton(
                              'Submit', 46, 120.w, primaryColor, white))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget selectImageOption() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.h),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              editProCtlr.getProfileImage(ImageSource.camera);
              Get.back();
            },
            title: Text('Camera', style: TextStyle(color: textSecondary)),
            leading: Icon(Icons.camera_alt_outlined, color: primaryColor),
          ),
          ListTile(
            onTap: () {
              editProCtlr.getProfileImage(ImageSource.gallery);
              Get.back();
            },
            title: Text('Gallery', style: TextStyle(color: textSecondary)),
            leading: Icon(
              Icons.photo,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
