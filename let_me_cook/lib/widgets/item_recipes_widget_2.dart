// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';
import 'package:iconly/iconly.dart';

class ItemRecipesWidget2 extends StatefulWidget {
  final String imageFood;
  final String nameFood;
  const ItemRecipesWidget2(
      {super.key, required this.imageFood, required this.nameFood});

  @override
  State<ItemRecipesWidget2> createState() => _ItemRecipesWidget2State();
}

class _ItemRecipesWidget2State extends State<ItemRecipesWidget2> {
  bool isSecleted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.width150 + 6,
      height: Dimensions.height200 - 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
        boxShadow: [BoxShadows.defaultBoxShadow],
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.widthPadding10 + 2),
        child: Column(
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
                child: ImageHelper.loadFromAsset(
                  widget.imageFood,
                  width: Dimensions.widthPadding100 + 32, //132
                  height: Dimensions.heightPadding60 + 28,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: Dimensions.widthPadding10,
                top: Dimensions.heightPadding10,
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
            ]),
            Container(
              height: Dimensions.heightPadding15,
            ),
            SizedBox(
              width: Dimensions.widthPadding100 + 32,
              child: Text(
                widget.nameFood,
                style: TextStyles.defaultStyle.bold
                    .copyWith(fontSize: 16, color: ColorPalette.primaryColor),
                maxLines: 2,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
