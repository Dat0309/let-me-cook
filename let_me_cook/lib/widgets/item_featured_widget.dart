import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';
import 'package:let_me_cook/helpers/asset_helpers.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';

class ItemFeaturedWidget extends StatelessWidget {
  final String name;
  final String imagefood;
  final String time;
  final String userName;
  final String userImage;
  const ItemFeaturedWidget(
      {super.key,
      required this.name,
      required this.imagefood,
      required this.time,
      required this.userName,
      required this.userImage});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
        child: ImageHelper.loadFromAsset(imagefood,
            width: Dimensions.width150 + Dimensions.widthPadding100 + 14,
            height: Dimensions.height140 + 32,
            fit: BoxFit.fill),
      ),
      Positioned(
        left: Dimensions.widthPadding15 - 1,
        top: Dimensions.heightPadding60 + 30,
        child: SizedBox(
          width: Dimensions.height140 + 40,
          child: Text(
            name,
            style: TextStyles.defaultStyle.bold
                .copyWith(fontSize: 18, color: Colors.white),
            maxLines: 2,
          ),
        ),
      ),
      Positioned(
        left: Dimensions.widthPadding15 - 1,
        bottom: Dimensions.heightPadding15 + 1,
        child: Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
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
              style: TextStyles.defaultStyle.light
                  .copyWith(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      ),
      Positioned(
        right: Dimensions.widthPadding15 - 1,
        bottom: Dimensions.heightPadding20,
        child: Row(
          children: [
            SizedBox(
                width: Dimensions.widthPadding15 + 1,
                height: Dimensions.heightPadding15 + 1,
                child: ImageHelper.loadFromAsset(
                  AssetHelper.iconTimeWhite,
                  width: 16,
                  height: 16,
                  fit: BoxFit.cover,
                )),
            Container(
              width: 7,
            ),
            Text(
              time,
              style: TextStyles.defaultStyle.light
                  .copyWith(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      )
    ]);
  }
}
