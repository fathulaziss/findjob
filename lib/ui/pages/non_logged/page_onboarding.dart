import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:findjob/ui/pages/non_logged/page_login.dart';
import 'package:findjob/ui/pages/non_logged/page_register.dart';
import 'package:findjob/ui/widgets/button_outlined.dart';
import 'package:findjob/ui/widgets/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOnBoarding extends StatelessWidget {
  const PageOnBoarding({Key? key}) : super(key: key);

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
                  top: Insets.xl * 2.5, left: Insets.xl, right: Insets.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mastering\nYour Habbit to\nGet Future Career',
                      style: TextStyles.whiteNormal
                          .copyWith(fontSize: FontSizes.s24)),
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
                        Get.to(() => PageRegister(titleBack: "Back"));
                      },
                    ),
                    verticalSpace(Insets.lg),
                    ButtonOutlined(
                      title: 'Sign In',
                      onPressed: () {
                        Get.to(() => PageLogin());
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
