import 'dart:developer';

import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:findjob/ui/pages/logged/main_page.dart';
import 'package:findjob/ui/pages/non_logged/register_page.dart';
import 'package:findjob/ui/widgets/button_primary.dart';
import 'package:findjob/ui/widgets/input_email.dart';
import 'package:findjob/ui/widgets/input_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = '';
  String password = '';
  bool isValidEmail = false;
  bool isValidPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Insets.med * 2, vertical: Insets.xs * 2.5),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildTitle(),
                InputEmail(
                  label: 'Email Address',
                  hintText: 'Email Address',
                  controller: emailController,
                  email: (String value) {
                    email = value;
                  },
                  isValid: (bool value) {
                    isValidEmail = value;
                    log('cek isValidEmail : $isValidEmail');
                  },
                ),
                InputPassword(
                  label: "Password",
                  hintText: "Password",
                  controller: passwordController,
                  validate: (value) {
                    if (value.toString().isEmpty) {
                      isValidPassword = false;
                      log('cek isValidPassword : $isValidPassword');
                      return "Password can't be empty";
                    } else {
                      isValidPassword = true;
                      log('cek isValidPassword : $isValidPassword');
                      return null;
                    }
                  },
                  onChange: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                  isValid: (bool value) {},
                ),
                verticalSpace(Insets.xl),
                ButtonPrimary(
                  backgroundColor: AppColors.mainColor,
                  titleStyle: TextStyles.whiteMedium,
                  title: 'Sign In',
                  onPressed: () {
                    Get.to(() => MainPage(initial: 0));
                  },
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => RegisterPage(titleBack: "Back to Sign In"));
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                        Colors.black.withOpacity(0.05)),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Text("Create Account", style: TextStyles.greyLight),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text("Back", style: TextStyles.greyLight),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sign In', style: TextStyles.greyNormal),
        verticalSpace(Insets.xs / 2),
        Text('Build Your Career',
            style: TextStyles.blackSemiBold.copyWith(fontSize: FontSizes.s20)),
        verticalSpace(Insets.xl),
        Center(
            child: Image.asset(Assets.imageLogin,
                width: MediaQuery.of(context).size.width * 0.55)),
        verticalSpace(Insets.xl),
      ],
    );
  }
}
