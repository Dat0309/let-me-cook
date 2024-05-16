import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_colors.dart';

extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get italic {
    return copyWith(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get fontHeader {
    return copyWith(
      fontSize: 22,
      height: 22 / 20,
    );
  }

  TextStyle get fontCaption {
    return copyWith(
      fontSize: 12,
      height: 12 / 10,
    );
  }

  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600, fontFamily: 'SofiaPro');
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700, fontFamily: 'SofiaPro');
  }

  TextStyle get text1Color {
    return copyWith(color: ColorPalette.textColor, fontFamily: 'SofiaPro');
  }

  TextStyle get primaryTextColor {
    return copyWith(color: ColorPalette.primaryColor, fontFamily: 'SofiaPro');
  }

  TextStyle get whiteTextColor {
    return copyWith(color: Colors.white, fontFamily: 'SofiaPro');
  }

  TextStyle get subTitleTextColor {
    return copyWith(color: ColorPalette.textColor, fontFamily: 'SofiaPro');
  }

  // convenience functions
  TextStyle setColor(Color color) {
    return copyWith(color: color);
  }

  TextStyle setTextSize(double size) {
    return copyWith(
      fontSize: size,
    );
  }
}

class TextStyles {
  TextStyles(this.context);

  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
    fontFamily: 'SofiaPro',
    fontSize: 14,
    color: ColorPalette.textColor,
    fontWeight: FontWeight.w400,
    height: 16 / 14,
  );
}
