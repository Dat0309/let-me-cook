// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';
import 'package:let_me_cook/helpers/asset_helpers.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';
import 'package:iconly/iconly.dart';

class ItemRecipesWidget extends StatefulWidget {
  final String imageFood;
  final String kCal;
  final String nameFood;
  final String time;

  const ItemRecipesWidget({
    super.key,
    required this.imageFood,
    required this.kCal,
    required this.nameFood,
    required this.time,
  });

  @override
  State<ItemRecipesWidget> createState() => _ItemRecipesWidgetState();
}

class _ItemRecipesWidgetState extends State<ItemRecipesWidget> {
  bool isSecleted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.width150 + 50,
      height: Dimensions.height220 + 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
        boxShadow: [BoxShadows.defaultBoxShadow],
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.heightPadding15 + 1),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
                  child: ImageHelper.loadFromAsset(widget.imageFood,
                      width: Dimensions.width140 + 28,
                      height: Dimensions.height120 + 8,
                      fit: BoxFit.fill),
                ),
                Positioned(
                  right: Dimensions.widthPadding15 + 1,
                  top: Dimensions.heightPadding15 + 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSecleted = !isSecleted;
                      });
                    },
                    child: Container(
                      width: Dimensions.widthPadding25,
                      height: Dimensions.widthPadding25,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius3 + 1),
                        color: Colors.white,
                      ),
                      child: isSecleted
                          ? const Icon(
                              IconlyBold.heart,
                              color: ColorPalette.secondColor,
                              size: 16,
                            )
                          : const Icon(
                              IconlyLight.heart,
                              size: 16,
                              color: ColorPalette.primaryColor,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: Dimensions.heightPadding15,
            ),
            SizedBox(
              width: Dimensions.width140 + 28,
              child: Text(
                widget.nameFood,
                style: TextStyles.defaultStyle.bold
                    .copyWith(fontSize: 18, color: ColorPalette.primaryColor),
                maxLines: 2,
              ),
            ),
            Container(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: Dimensions.widthPadding15 + 1,
                        height: Dimensions.heightPadding15 + 1,
                        child: ImageHelper.loadFromAsset(
                          AssetHelper.iconCalories,
                          width: 16,
                          height: 16,
                          fit: BoxFit.cover,
                        )),
                    Container(
                      width: 4,
                    ),
                    Text(
                      widget.kCal,
                      style: TextStyles.defaultStyle.light.copyWith(
                          fontSize: 14, color: ColorPalette.grey2Colors),
                    )
                  ],
                ),
                Container(
                  width: Dimensions.widthPadding30,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: Dimensions.widthPadding10 + 3,
                        height: Dimensions.heightPadding10 + 3,
                        child: ImageHelper.loadFromAsset(
                          AssetHelper.iconTimeGrey,
                          width: 16,
                          height: 16,
                          fit: BoxFit.cover,
                        )),
                    Container(
                      width: 4,
                    ),
                    Text(
                      widget.time,
                      style: TextStyles.defaultStyle.light.copyWith(
                          fontSize: 14, color: ColorPalette.grey2Colors),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
