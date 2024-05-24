// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';
import 'package:iconly/iconly.dart';

class ItemRecipesWidget4 extends StatelessWidget {
  final String nameFood;
  final String imageFood;

  final String userName;
  final String userImage;
  const ItemRecipesWidget4(
      {super.key,
      required this.nameFood,
      required this.imageFood,
      required this.userName,
      required this.userImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.widthPadding300 + 27,
      height: Dimensions.height120 - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
        boxShadow: [BoxShadows.defaultBoxShadow],
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.widthPadding10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
              child: ImageHelper.loadFromAsset(imageFood,
                  width: Dimensions.widthPadding100,
                  height: Dimensions.widthPadding60 + 24,
                  fit: BoxFit.fill),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.widthPadding20),
                  child: SizedBox(
                    width: Dimensions.width150 + 5,
                    child: Text(
                      nameFood,
                      style: TextStyles.defaultStyle.bold.copyWith(
                          fontSize: 18, color: ColorPalette.primaryColor),
                      maxLines: 2,
                    ),
                  ),
                ),
                Container(
                  height: Dimensions.heightPadding8,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorPalette.grey2Colors,
                      child: Padding(
                        padding: const EdgeInsets.all(2), // Border radius
                        child: ClipOval(
                            child: ImageHelper.loadFromAsset(userImage,
                                width: 23, height: 23, fit: BoxFit.fill)),
                      ),
                    ),
                    Container(
                      width: 7,
                    ),
                    Text(
                      userName,
                      style: TextStyles.defaultStyle.regular.copyWith(
                          fontSize: 14, color: ColorPalette.grey2Colors),
                    )
                  ],
                ),
              ],
            ),
            Container(
                height: Dimensions.widthPadding25,
                width: Dimensions.widthPadding25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius3 + 1),
                  color: ColorPalette.primaryColor,
                ),
                child: const Icon(
                  IconlyBold.arrow_right_3,
                  color: ColorPalette.white,
                  size: 14,
                ))
          ],
        ),
      ),
    );
  }
}
