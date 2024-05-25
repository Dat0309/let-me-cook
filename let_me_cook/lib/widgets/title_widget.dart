import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_constants.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';

class TitleWidget extends StatelessWidget {
  final String leftText;
  final Function()? onTap;
  const TitleWidget({super.key, required this.leftText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.widthPadding25 - 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyles.defaultStyle.bold.copyWith(fontSize: 20),
            textAlign: TextAlign.start,
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              AppConstants.seeAll,
              style: TextStyles.defaultStyle.bold
                  .copyWith(color: ColorPalette.secondColor, fontSize: 14),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
