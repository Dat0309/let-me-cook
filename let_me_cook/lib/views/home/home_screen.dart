// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_constants.dart';
import 'package:let_me_cook/helpers/asset_helpers.dart';

import 'package:let_me_cook/widgets/item_category_widget.dart';
import 'package:let_me_cook/widgets/item_featured_widget.dart';
import 'package:let_me_cook/widgets/item_recipes_widget.dart';
import 'package:let_me_cook/widgets/item_recipes_widget_2.dart';
import 'package:let_me_cook/widgets/item_recipes_widget_3.dart';
import 'package:let_me_cook/widgets/item_recipes_widget_4.dart';
import 'package:let_me_cook/widgets/item_welcome_widget.dart';
import 'package:let_me_cook/widgets/title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(leftText: AppConstants.popular, onTap: () {}),
        Container(
          height: 20,
        ),
        const ItemWelcomeWidget()
      ],
    );
  }
}
