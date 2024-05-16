import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xff042628);
  static const Color secondColor = Color(0xff70B9BE);
  static const Color accentColor = Color(0xff3DA0A7);
  static const Color accentSecondColor = Color(0xff3DA0A7);
  static const Color greyColors = Color(0xff48525F);
  static const Color grey2Colors = Color(0xff97A2B0);
  static const Color grey3Colors = Color(0xffCCD4DE);
  static const Color grey4Colors = Color(0xffE6EBF2);

  static const Color textColor = Color(0xff0A2533);
  static const Color bgScaffoldColor = Color(0xffF2F2F2);
  static const Color colorShadow = Color(0xffCCCCCC);
  static const Color colorIcon = Color(0xffA29EB6);
  static const Color colorBgItem = Color(0xffF0F3F6);

  static const Color green = Color(0xff4B8364);
  static const Color blue = Color(0xff5676DC);
  static const Color pupler = Color(0xffA559D9);
  static const Color orange = Color(0xffE6B44C);
  static const Color white = Color(0xffffffff);
}

class Gradients {
  static const Gradient defualtGradientBg = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [ColorPalette.secondColor, ColorPalette.primaryColor],
  );
}

class BoxShadows {
  static BoxShadow defaultBoxShadow = const BoxShadow(
    color: ColorPalette.colorShadow,
    blurRadius: 8,
    offset: Offset(4, 4),
  );
}
