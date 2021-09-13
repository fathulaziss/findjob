import 'package:findjob/shared/shared.dart';
import 'package:findjob/ui/pages/register_page.dart';
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
                  backgroundColor: mainColor,
                  titleStyle: whiteTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  title: 'Sign In',
                  onPressed: () {},
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
                  child: Text(
                    "Create Account",
                    style: grayTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Back",
                    style: grayTextStyle.copyWith(fontSize: 14),
                  ),
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
        Text('Sign In',
            style: grayTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w400)),
        SizedBox(height: 2),
        Text('Build Your Career',
            style: blackTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.w600)),
        SizedBox(height: 20),
        Center(
            child: Image.asset(Assets.imageLogin,
                width: MediaQuery.of(context).size.width * 0.55)),
        SizedBox(height: 20),
      ],
    );
  }
}
