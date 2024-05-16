// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:let_me_cook/helpers/asset_helpers.dart';
import 'package:let_me_cook/helpers/image_helpers.dart';
import 'package:let_me_cook/helpers/local_storage_helpers.dart';
import 'package:let_me_cook/views/home/navigator.dart';
import 'package:let_me_cook/views/intro/intro_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async {
    final ignoreIntroScreen =
        LocalSrorageHelper.getValues('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(milliseconds: 1000));

    if (ignoreIntroScreen != null && ignoreIntroScreen) {
      // ignore: use_build_context_synchronously

      Get.to(() => const NavigatorPage());
    } else {
      LocalSrorageHelper.setValue('ignoreIntroScreen', true);
      // ignore: use_build_context_synchronously
      Get.to(() => const IntroScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: ImageHelper.loadFromAsset(AssetHelper.imageBackgroundSplash,
                fit: BoxFit.fitWidth))
      ],
    );
  }
}
