import 'package:findjob/ui/pages/non_logged/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: SplashPage(),
      home: OnBoardingPage(),
      // home: LoginPage(),
    );
  }
}
