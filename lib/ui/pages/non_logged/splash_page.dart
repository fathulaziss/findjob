import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Text('FUTUREJOB',
                style:
                    TextStyles.whiteSemiBold.copyWith(fontSize: FontSizes.s32))
          ],
        ),
      ),
    );
  }
}
