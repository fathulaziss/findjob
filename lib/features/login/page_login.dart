import 'dart:developer';
import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/buttons/button_primary.dart';
import 'package:findjob/shared/widgets/inputs/input_email.dart';
import 'package:findjob/shared/widgets/inputs/input_password.dart';
import 'package:findjob/features/page_main.dart';
import 'package:findjob/features/register/page_register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = '';
  String password = '';
  bool isValidEmail = false;
  bool isValidPassword = false;

  validateForm() {
    if (isValidEmail && isValidPassword) {
      Get.to(() => PageMain(initial: 0));
    } else {
      Get.snackbar('Info', 'Input your Email and Password with correct',
          backgroundColor: Colors.yellow, colorText: AppColors.blackColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Insets.med * 2, vertical: Insets.xl * 1.5),
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
                    validateForm();
                  },
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => PageRegister(titleBack: "Back to Sign In"));
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
                width: IconSizes.xxl * 4.35, height: IconSizes.xxl * 4)),
        verticalSpace(Insets.xl),
      ],
    );
  }
}
