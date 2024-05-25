import 'package:flutter/material.dart';

import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';

class ItemCategoryWidget extends StatefulWidget {
  final String name;
  const ItemCategoryWidget({
    super.key,
    required this.name,
  });

  @override
  State<ItemCategoryWidget> createState() => _ItemCategoryWidgetState();
}

class _ItemCategoryWidgetState extends State<ItemCategoryWidget> {
  bool isSecleted = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSecleted = !isSecleted;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 0),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            gradient: isSecleted
                ? Gradients.defualtGradientBg2
                : Gradients.defualtGradientBg),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.widthPadding25 - 1,
              vertical: Dimensions.heightPadding10 - 1),
          child: Text(
            widget.name,
            textAlign: TextAlign.center,
            style: TextStyles.defaultStyle.copyWith(
              fontSize: 16,
              color:
                  isSecleted ? ColorPalette.primaryColor : ColorPalette.white,
            ),
          ),
        ),
      ),
    );
  }
}
