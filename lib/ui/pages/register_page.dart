import 'package:findjob/shared/shared.dart';
import 'package:findjob/ui/widgets/button_primary.dart';
import 'package:findjob/ui/widgets/input_form_primary.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: (MediaQuery.of(context).size.width > 380) ? 10 : 5),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildTitle(),
                InputFormPrimary(
                  title: 'Full Name',
                  hintText: 'ex : Muhamad Fathul Azis',
                ),
                InputFormPrimary(
                    title: 'Email Address', hintText: 'jhony@example.com'),
                InputFormPrimary(
                    title: 'Password', hintText: 'jhony@example.com'),
                InputFormPrimary(
                    title: 'Your Goal', hintText: 'jhony@example.com'),
                SizedBox(
                    height:
                        (MediaQuery.of(context).size.width > 380) ? 20 : 10),
                ButtonPrimary(
                  backgroundColor: mainColor,
                  titleStyle: whiteTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  title: 'Sign Up',
                  onPressed: () {},
                ),
                SizedBox(
                    height: (MediaQuery.of(context).size.width > 320) ? 0 : 0),
                TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.05)),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: Text(
                      'Back to Sign In',
                      style: grayTextStyle.copyWith(fontSize: 14),
                    ))
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
        Text('Sign Up',
            style: grayTextStyle.copyWith(
                fontSize: (MediaQuery.of(context).size.width > 380) ? 16 : 14,
                fontWeight: FontWeight.w400)),
        SizedBox(height: 2),
        Text('Begin New Journey',
            style: blackTextStyle.copyWith(
                fontSize: (MediaQuery.of(context).size.width > 380) ? 24 : 22,
                fontWeight: FontWeight.w600)),
        SizedBox(height: (MediaQuery.of(context).size.width > 380) ? 25 : 10),
        Center(
            child: Image.asset(Assets.userDefault,
                width: (MediaQuery.of(context).size.width > 380) ? 120 : 100)),
        SizedBox(height: (MediaQuery.of(context).size.width > 380) ? 25 : 10),
      ],
    );
  }
}
