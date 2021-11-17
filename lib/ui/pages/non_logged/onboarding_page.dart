import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:findjob/ui/pages/non_logged/login_page.dart';
import 'package:findjob/ui/pages/non_logged/register_page.dart';
import 'package:findjob/ui/widgets/button_outlined.dart';
import 'package:findjob/ui/widgets/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.background), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: Insets.xl * 2.5,
                  left: Insets.xl * 1.5,
                  right: Insets.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Build Your Habbit\nto Get Future Career\nLike a Master',
                      style: TextStyles.whiteNormal
                          .copyWith(fontSize: FontSizes.s32)),
                  verticalSpace(Insets.xl),
                  Text('18.000 jobs available', style: TextStyles.whiteLight)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: Insets.xl * 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonPrimary(
                      title: 'Get Started',
                      onPressed: () {
                        Get.to(() => RegisterPage(titleBack: "Back"));
                      },
                    ),
                    verticalSpace(Insets.lg),
                    ButtonOutlined(
                      title: 'Sign In',
                      onPressed: () {
                        Get.to(() => LoginPage());
                      },
                    ),
                    verticalSpace(Insets.xl * 2.5),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
