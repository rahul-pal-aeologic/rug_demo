import 'package:flutter/material.dart';

Widget extraSmallSpace = const SizedBox.square(
  dimension: 5,
);
Widget minimumSpacer = const SizedBox.square(
  dimension: 10,
);
Widget normalSpacer = const SizedBox.square(
  dimension: 25,
);
Widget mediumSpacer = const SizedBox.square(
  dimension: 50,
);
Widget largeSpacer = const SizedBox.square(
  dimension: 80,
);

class AppDimentions {
  static const double loginPageMinHeight = 600;
  static const double propertyFilterPageMinHeight = 650;
  static const double buttonBorder = 32;

  static const double px0 = 0.0;
  static const double px0_1 = 0.1;
  static const double px0_5 = 0.5;
  static const double px1 = 1.0;
  static const double px2 = 2.0;
  static const double px2_5 = 2.5;
  static const double px3 = 3.0;
  static const double px3_5 = 3.5;
  static const double px5 = 5.0;
  static const double px6 = 6.0;
  static const double px7 = 7.0;
  static const double px7_5 = 7.5;
  static const double px8 = 8.0;
  static const double px9 = 9.0;
  static const double px10 = 10.0;
  static const double px12 = 12.0;
  static const double px12_5 = 12.5;
  static const double px13 = 13;
  static const double px14 = 14.0;
  static const double px15 = 15.0;
  static const double px16 = 16.0;
  static const double px18 = 18.0;
  static const double px20 = 20.0;
  static const double px22 = 22.0;
  static const double px24 = 24.0;
  static const double px25 = 25.0;
  static const double px26 = 26.0;
  static const double px28_5 = 28.5;
  static const double px30 = 30.0;
  static const double px32 = 32.0;
  static const double px34 = 34.0;
  static const double px35 = 35.0;
  static const double px40 = 40.0;
  static const double px44 = 44.0;
  static const double px48 = 48.0;
  static const double px50 = 50.0;
  static const double px55 = 55.0;
  static const double px60 = 60.0;
  static const double px65 = 65.0;
  static const double px70 = 70.0;
  static const double px75 = 75.0;
  static const double px80 = 80.0;
  static const double px90 = 90.0;
  static const double px84 = 84.0;
  static const double px100 = 100.0;
  static const double px110 = 110.0;
  static const double px120 = 120.0;
  static const double px125 = 125.0;
  static const double px130 = 130.0;
  static const double px140 = 140.0;
  static const double px150 = 150.0;
  static const double px160 = 160.0;
  static const double px170 = 170.0;
  static const double px180 = 180.0;
  static const double px190 = 190.0;
  static const double px185 = 185.0;
  static const double px200 = 200.0;
  static const double px218 = 218.0;
  static const double px207 = 207.0;
  static const double px250 = 250.0;
  static const double px270 = 270.0;
  static const double px280 = 280.0;
  static const double px300 = 300.0;
  static const double px320 = 320.0;
  static const double px330 = 330.0;
  static const double px350 = 350.0;
  static const double px360 = 360.0;
  static const double px370 = 370.0;
  static const double px400 = 400.0;
  static const double px700 = 700.0;
  static const double px900 = 900.0;
}

class DeviceSize {
  static double height(BuildContext context) {
    double height;
    height = MediaQuery.of(context).size.height;
    return height;
  }

  static double width(BuildContext context) {
    double width;
    width = MediaQuery.of(context).size.width;
    return width;
  }
}
