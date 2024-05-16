// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // view
  static double pageViewContainer = screenHeight / 4.02;
  static double pageView = screenHeight / 3.01;
  static double pageViewTextContainer = screenHeight / 8.04;

  // padding
  static double widthPadding5 = screenWidth / 78.6; //5
  static double widthPadding8 = screenWidth / 49.125; //8
  static double heightPadding8 = screenHeight / 120.6625;
  static double heightPadding10 = screenHeight / 96.53;
  static double widthPadding10 = screenWidth / 39.3;
  static double heightPadding15 = screenHeight / 64.35;
  static double widthPadding15 = screenWidth / 26.2;
  static double widthPadding17 = screenWidth / 23.12;
  static double heightPadding20 = screenHeight / 48.265;
  static double widthPadding20 = screenWidth / 19.65;
  static double widthPadding25 = screenWidth / 15.72; //25
  static double heightPadding30 = screenHeight / 32.17;
  static double widthPadding30 = screenWidth / 13.1;
  static double widthPadding40 = screenWidth / 9.825;
  static double heightPadding45 = screenHeight / 21.3;
  static double widthPadding60 = screenWidth / 6.55;
  static double heightPadding60 = screenHeight / 16 + 10;
  static double widthPadding100 = screenWidth / 4;
  static double widthPadding300 = widthPadding100 + 200;

  //radius
  static double radius15 = screenHeight / 52;
  static double radius20 = screenHeight / 39;
  static double radius30 = screenHeight / 26;
  static double radius50 = radius30 + 20;
  static double radius8 = screenHeight / 97.625;
  static double radius3 = screenHeight / 260;

  //icon size
  static double iconSize24 = screenHeight / 40.22 + 2;
  static double iconSize16 = screenHeight / 60.33 + 2;
  static double iconSize50 = screenHeight / 19.309;

  // view size
  static double height1000 = screenHeight / 0.781;
  static double height140 = screenHeight / 5.57;
  static double width140 = screenWidth / 2.8;
  static double height350 = screenHeight / 2.231;
  static double height120 = screenHeight / 6.5;
  static double height220 = screenHeight / 3.55;
  static double width150 = screenWidth / 2.62;
  static double height200 = screenHeight / 3.9;
}
