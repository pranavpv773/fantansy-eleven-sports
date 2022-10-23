import 'package:flutter/material.dart';


/// A list of custom color used in the application.
abstract class AppColors {
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(108, 80, 221, .1),
    100: Color.fromRGBO(108, 80, 221, .2),
    200: Color.fromRGBO(108, 80, 221, .3),
    300: Color.fromRGBO(108, 80, 221, .4),
    400: Color.fromRGBO(108, 80, 221, .5),
    500: Color.fromRGBO(108, 80, 221, .6),
    600: Color.fromRGBO(108, 80, 221, .7),
    700: Color.fromRGBO(108, 80, 221, .8),
    800: Color.fromRGBO(108, 80, 221, .9),
    900: Color.fromRGBO(108, 80, 221, .10),
  };

// #63B106
// #025DB9
// #EFF9F3


  static const int  hColorHint = 0xff646464;
  static const int  hColorWhite = 0xffFFFFFF;
  static const int  hColorBlack = 0xff000000;
  static const int  hGradientColor = 0xff7C50D7;
  static const int  hGradientColor1 = 0xffDC5188;


  static const Color primaryColor = Color(hGradientColor1);

  // color for light theme
  static const Color whiteColor = Color(hColorWhite);

  // color for dark theme
  static const Color blackColor = Color(hColorBlack);


  // extraColor
  static const Color gradientColor =  Color(hGradientColor);
  static const Color gradientColor1 =  Color(hGradientColor1);
  static const Color hintColor = Color(hColorHint);





}
