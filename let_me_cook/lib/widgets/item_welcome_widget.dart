// ignore_for_file: depend_on_referenced_packages, unused_local_variable

import 'package:flutter/material.dart';
import 'package:let_me_cook/constants/app_constants.dart';
import 'package:let_me_cook/constants/app_dimensions.dart';
import 'package:let_me_cook/constants/app_textstyle.dart';

class ItemWelcomeWidget extends StatefulWidget {
  const ItemWelcomeWidget({super.key});

  @override
  State<ItemWelcomeWidget> createState() => _ItemWelcomeWidgetState();
}

class _ItemWelcomeWidgetState extends State<ItemWelcomeWidget> {
  late String greetingMessage;
  late IconData greetingIcon;
  Color greetingColor = Colors.orange;

  @override
  void initState() {
    super.initState();
    _setGreetingMessage();
  }

  void _setGreetingMessage() {
    final currentTime = DateTime.now();
    final currentHour = currentTime.hour;

    if (currentHour >= 4 && currentHour < 12) {
      greetingMessage = AppConstants.goodMorning;
      greetingIcon = Icons.wb_sunny;
      greetingColor;
    } else if (currentHour >= 12 && currentHour < 17) {
      greetingMessage = AppConstants.goodAfternoon;
      greetingIcon = Icons.wb_sunny;
      greetingColor;
    } else {
      greetingMessage = AppConstants.goodEvening;
      greetingIcon = Icons.nights_stay;
      greetingColor = Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.widthPadding20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            greetingIcon,
            color: greetingColor,
            size: 20,
          ),
          Container(
            width: 5,
          ),
          Text(
            greetingMessage,
            style: TextStyles.defaultStyle.regular.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
