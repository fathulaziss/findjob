import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:findjob/ui/pages/logged/main_page.dart';
import 'package:findjob/ui/pages/non_logged/register_page.dart';
import 'package:findjob/ui/widgets/button_primary.dart';
import 'package:findjob/ui/widgets/input_form_primary.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildTitle(),
                InputFormPrimary(
                  controller: emailController,
                  title: 'Email Address',
                  hintText: 'jhony@example.com',
                ),
                InputFormPrimary(
                  margin: EdgeInsets.only(bottom: 20),
                  controller: passwordController,
                  title: 'Password',
                  hintText: 'Password',
                  obsecureText: true,
                ),
                ButtonPrimary(
                  backgroundColor: AppColors.mainColor,
                  titleStyle: TextStyles.whiteMedium,
                  title: 'Sign In',
                  onPressed: () {
                    Get.to(() => MainPage(
                          initial: 0,
                        ));
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
        SizedBox(height: 2),
        Text('Build Your Career',
            style: TextStyles.blackSemiBold.copyWith(fontSize: FontSizes.s20)),
        SizedBox(height: 20),
        Center(
            child: Image.asset(Assets.imageLogin,
                width: MediaQuery.of(context).size.width * 0.55)),
        SizedBox(height: 20),
      ],
    );
  }
}
