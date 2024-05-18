import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';

class ItemIntroWidget extends StatelessWidget {
  const ItemIntroWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.sourceimage});

  final String title;
  final String description;
  final String sourceimage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: ImageHelper.loadFromAsset(sourceimage,
            width: Dimensions.screenWidth, fit: BoxFit.fitWidth),
      ),
      Positioned(
        bottom: 0,
        child: Container(
          width: Dimensions.screenWidth,
          height: Dimensions.height200 + Dimensions.heightPadding60 + 17,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius15),
                topRight: Radius.circular(Dimensions.radius15)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimensions.heightPadding30 + Dimensions.heightPadding10,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyles.defaultStyle.bold.copyWith(fontSize: 28),
              ),
              SizedBox(
                height: Dimensions.heightPadding10,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyles.defaultStyle.regular.copyWith(fontSize: 18),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
