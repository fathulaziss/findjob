import 'package:findjob/shared/shared.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(),
          ],
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
                fontSize: 16, fontWeight: FontWeight.w400)),
        SizedBox(height: 2),
        Text('Begin New Journey',
            style: blackTextStyle.copyWith(
                fontSize: 24, fontWeight: FontWeight.w600))
      ],
    );
  }
}
