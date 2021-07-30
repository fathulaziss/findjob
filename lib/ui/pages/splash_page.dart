import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.logo, width: 59, height: 76),
            SizedBox(height: 50),
            Text('FUTUREJOB',
                style: whiteTextStyle.copyWith(
                    fontSize: 32, fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
