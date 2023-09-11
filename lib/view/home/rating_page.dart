import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:klio_delivery/constant/value.dart';
import 'package:klio_delivery/global_widgets/button_widgets.dart';
import 'package:klio_delivery/view/home/home_widgets/custom_appbar.dart';
import 'package:klio_delivery/view/home/home_widgets/drawer.dart';

class RatingPage extends StatelessWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideDrawer(),
      backgroundColor: primaryBackground,
      body: Builder(
        builder: (context) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  customAppBar(context),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.r),
                            child: Image.network(
                                'https://img.freepik.com/free-photo/'
                                'front-view-crazy-emotional-young-guy-wearing-red-blouse'
                                '-hat-delivering-orders-yellow-background_179666-35777'
                                '.jpg?w=1380&t=st=1686569505~exp=1686570105~hmac=e93cb19df6'
                                'aa7deaeaf6688f1fccb9094e700b699dace2ed4166bd8117372c7a',
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        normalText('Mervin Murphyol', black,
                            fontsize: fontBig, fontW: FontWeight.w600),
                        Text(
                          'Manage and deliver high quality '
                          '\nproducts within schedules and to budget.'
                          '\nEstablish schedules and allocate \nproduction'
                          ' resources.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textSecondary,
                            fontSize: fontVerySmall,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 1; i <= 5; i++)
                              const Icon(Icons.star,
                                  size: 40, color: primaryColor),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        normalText('Rating : 5.0', black,
                            fontsize: fontMedium, fontW: FontWeight.w600)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
