import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/shared.dart';
import 'package:findjob/ui/widgets/button_outlined.dart';
import 'package:findjob/ui/widgets/button_primary.dart';
import 'package:flutter/material.dart';

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
              margin: EdgeInsets.only(top: 50, left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Build Your Habbit\nto Get Future Career\nLike a Master',
                      style: whiteTextStyle.copyWith(
                          fontSize: 32, fontWeight: FontWeight.w400)),
                  SizedBox(height: 20),
                  Text('18.000 jobs available',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w300))
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonPrimary(
                      title: 'Get Started',
                      onPressed: () {},
                    ),
                    SizedBox(height: 16),
                    ButtonOutlined(
                      title: 'Sign In',
                      onPressed: () {},
                    ),
                    SizedBox(height: 50)
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
