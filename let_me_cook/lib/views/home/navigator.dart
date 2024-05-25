// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:let_me_cook/constants/app_colors.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/helpers/asset_helpers.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';
import 'package:let_me_cook/views/home/home_screen.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var curIndex = 0;
  List pages = [
    const HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.white,
    )
  ];

  List<IconData> listOfIcons = [
    IconlyLight.home,
    IconlyLight.search,
    IconlyLight.notification,
    IconlyLight.user
  ];

  List<IconData> listOfIconsSelected = [
    IconlyBold.home,
    IconlyBold.search,
    IconlyBold.notification,
    IconlyBold.user_2
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: SafeArea(
        child: Stack(
          children: [
            pages[curIndex],
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: Dimensions.heightPadding60 - 4,
          width: Dimensions.widthPadding60 - 4,
          child: FittedBox(
            child: FloatingActionButton(
                backgroundColor: Colors.black,
                shape: const CircleBorder(),
                onPressed: () {},
                child: InkWell(
                  onTap: () {},
                  child: ImageHelper.loadFromAsset(AssetHelper.iconChef,
                      fit: BoxFit.fill),
                )),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20),
          topRight: Radius.circular(Dimensions.radius20),
        ),
        child: BottomAppBar(
          height: Dimensions.heightPadding60 + 23,
          shape: const CircularNotchedRectangle(),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  curIndex = index;
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.widthPadding30 + 3,
                    vertical: Dimensions.heightPadding30),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                        ),
                        curIndex == index
                            ? Icon(
                                listOfIconsSelected[index],
                                color: ColorPalette.secondColor,
                              )
                            : Icon(
                                listOfIcons[index],
                                color: ColorPalette.grey2Colors,
                              )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
