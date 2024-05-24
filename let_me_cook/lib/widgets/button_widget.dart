import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    this.ontap,
  });

  final String title;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.widthPadding15 + 1,
            horizontal: Dimensions.widthPadding100 + Dimensions.width140 + 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
          gradient: Gradients.defualtGradientBg,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyles.defaultStyle.bold.copyWith(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
