import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';

class ItemRecipesWidget3 extends StatefulWidget {
  final String imageFood;
  final String nameFood;
  const ItemRecipesWidget3(
      {super.key, required this.imageFood, required this.nameFood});

  @override
  State<ItemRecipesWidget3> createState() => _ItemRecipesWidget3State();
}

class _ItemRecipesWidget3State extends State<ItemRecipesWidget3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.widthPadding100,
      height: Dimensions.height120 + 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
        boxShadow: [BoxShadows.defaultBoxShadow],
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.widthPadding8),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
              child: ImageHelper.loadFromAsset(widget.imageFood,
                  width: Dimensions.widthPadding60 + 24,
                  height: Dimensions.widthPadding60 + 24,
                  fit: BoxFit.fill),
            ),
            Container(
              height: Dimensions.heightPadding10,
            ),
            SizedBox(
              width: Dimensions.widthPadding60 + 15,
              child: Text(
                widget.nameFood,
                style: TextStyles.defaultStyle.regular
                    .copyWith(fontSize: 14, color: ColorPalette.primaryColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
