import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class PageComingSoon extends StatelessWidget {
  const PageComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imageComingSoon, width: IconSizes.xxl * 4.5),
          verticalSpace(Insets.xxl),
          Text("Sorry, this feature is still under development",
              style: TextStyles.blackMedium),
        ],
      ),
    );
  }
}
