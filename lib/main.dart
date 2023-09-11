import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:klio_delivery/view/login/login_page.dart';

void main() {
  runApp(const KlioApp());
}

class KlioApp extends StatelessWidget {
  const KlioApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child){
         return GetMaterialApp(
            theme: ThemeData(primarySwatch: greenSwatch, fontFamily: 'Nunito'),
            debugShowCheckedModeBanner: false,
             home: const LoginPage()
           // home:RiderProfilePage(),
        );
      },
    );
  }
}

//flutter build apk --release --target-platform android-arm64



