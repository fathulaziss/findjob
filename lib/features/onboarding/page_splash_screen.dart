import 'dart:async';
import 'package:findjob/features/onboarding/page_onboarding.dart';
import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSplashScreen extends StatelessWidget {
  const PageSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => PageOnBoarding(), transition: Transition.zoom);
    });
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.logo,
                width: IconSizes.xl + 11, height: IconSizes.xxl + 16),
            verticalSpace(Insets.xl * 2.5),
            Text('FINDJOB',
                style: TextStyles.whiteSemiBold
                    .copyWith(fontSize: FontSizes.s32, letterSpacing: 2))
          ],
        ),
      ),
    );
  }
}
