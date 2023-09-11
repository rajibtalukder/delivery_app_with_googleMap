import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffED7402);
const Color accentColor = Color(0xffFDAD2B);

//Color for Bangladesh...
// const Color primaryColor = Color(0xff263368);
//const Color primaryColor = Color(0xff00a79e);
//const Color accentColor = Color(0xff00a79e);


const Color secondaryPurple = Color(0xffFFE7E6);
const Color secondaryAccentColor = Color(0xffFEF4E1);
Color secondaryColor = Color(0xffFEF4E1);
Color primaryText = Color(0xff262626);
Color textSecondary = Color(0xff7B7B7B);
Color primaryBackground = Color(0xffF1F4F8);
Color secondaryBackground = Color(0xffFFFFFF);
Color alternate = Color(0xff434343);
Color blue = Color(0xff096ADB);
Color green = Color(0xff00A600);
Color greenLight = Color(0xff6cacc7);
Color red = Color(0xffFB180D);
Color secondaryRed = Color(0xffFF2B18);
Color secondaryBlue = Color(0xffE3F3FF);

      Color black = Colors.black;
      Color white = Colors.white;

void applyThem(bool dark) {
  if (dark) {
    // secondaryColor = Color(0xffFEF4E1);
    primaryText = Color(0xffFFFFFF);
    textSecondary = Color(0xffD9D9D9);
    primaryBackground = Color(0xff252525);
    secondaryBackground = Color(0xff262626);
    alternate = Color(0xff434343);
    black=Colors.white;
    white = Color(0xff1A1A1A);

  } else {
    // secondaryColor = Color(0xffFEF4E1);
    primaryText = Color(0xff262626);
    textSecondary = Color(0xff7B7B7B);
    primaryBackground = Color(0xffF1F4F8);
    secondaryBackground = Color(0xffFFFFFF);
    alternate = Color(0xffF5F5F5);
    black = Colors.black;
    white= Colors.white;
  }
}

///for primarySwatch color change...
final Map<int, Color> _yellow700Map = {
  50:  primaryColor.withOpacity(0.1),
  100:  primaryColor.withOpacity(0.2),
  200:  primaryColor.withOpacity(0.3),
  300:  primaryColor.withOpacity(0.4),
  400:  primaryColor.withOpacity(0.5),
  500:  primaryColor.withOpacity(0.6),
  600:  primaryColor.withOpacity(0.7),
  700:  primaryColor.withOpacity(0.8),
  800:  primaryColor.withOpacity(0.9),
  900:  primaryColor.withOpacity(0.10),
};

final MaterialColor greenSwatch =
MaterialColor(primaryColor.value, _yellow700Map);
