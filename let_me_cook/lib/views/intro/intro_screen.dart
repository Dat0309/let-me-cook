// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';
import 'package:let_me_cook/views/home/navigator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/helpers/asset_helpers.dart';
import 'package:let_me_cook/views/intro/widget/item_intro_widget.dart';
import 'package:get/get.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  final StreamController<int> _streamController = StreamController<int>();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _streamController.add(_pageController.page!.toInt());
    });
  }

  final List<Widget> listpages = [
    const ItemIntroWidget(
      title: 'All recipe you needed',
      description: '5000+ healthy recipes made by people for your healthy life',
      sourceimage: AssetHelper.intro1,
    ),
    const ItemIntroWidget(
      title: 'Order ingredients',
      description: 'Order the ingredients you need quickly with a fast process',
      sourceimage: AssetHelper.intro2,
    ),
    const ItemIntroWidget(
      title: 'Let’s cooking',
      description:
          'Cooking based on the food recipes you find and the food you love',
      sourceimage: AssetHelper.intro3,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: _pageController,
        children: listpages,
      ),
      Positioned(
        left: Dimensions.width150 + 15,
        bottom: Dimensions.height220 + Dimensions.heightPadding60 + 10,
        child: SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: ScrollingDotsEffect(
              dotWidth: Dimensions.widthPadding5 + 1,
              dotHeight: Dimensions.widthPadding5 + 1,
              activeStrokeWidth: 1,
              activeDotScale: 1.5,
              dotColor: ColorPalette.accentSecondColor,
              fixedCenter: true,
              activeDotColor: Colors.white),
        ),
      ),
      Positioned(
        bottom: Dimensions.heightPadding30 + 6,
        child: GestureDetector(
          onTap: () {
            if (_pageController.page == 2) {
              Get.to(const NavigatorPage());
            } else {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn);
            }
          },
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Dimensions.widthPadding20 + 4),
            child: Container(
              width: Dimensions.widthPadding300 + Dimensions.widthPadding40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15 + 1),
                  color: ColorPalette.primaryColor),
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.widthPadding15 + 1,
              ),
              child: StreamBuilder<int>(
                initialData: 0,
                stream: _streamController.stream,
                builder: (context, snapshot) {
                  return Text(
                    textAlign: TextAlign.center,
                    snapshot.data == 2 ? 'Get Started' : 'Next',
                    style: TextStyles.defaultStyle.bold
                        .copyWith(fontSize: 16, color: ColorPalette.white),
                  );
                },
              ),
            ),
          ),
        ),
      )
    ]));
  }
}
