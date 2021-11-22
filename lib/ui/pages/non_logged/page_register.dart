import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:findjob/ui/widgets/button_primary.dart';
import 'package:findjob/ui/widgets/input_primary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageRegister extends StatefulWidget {
  final String? titleBack;

  const PageRegister({Key? key, this.titleBack}) : super(key: key);

  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController goalController = TextEditingController();
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
                InputPrimary(
                  controller: nameController,
                  label: 'Full Name',
                  hintText: 'ex : Muhamad Fathul Azis',
                ),
                InputPrimary(
                  controller: emailController,
                  label: 'Email Address',
                  hintText: 'jhony@example.com',
                ),
                InputPrimary(
                  controller: passwordController,
                  label: 'Password',
                  hintText: 'Password',
                ),
                InputPrimary(
                  controller: goalController,
                  margin: EdgeInsets.only(bottom: 20),
                  label: 'Your Goal',
                  hintText: 'ex : Become to be Flutter Developer',
                ),
                ButtonPrimary(
                  backgroundColor: AppColors.mainColor,
                  titleStyle: TextStyles.whiteMedium,
                  title: 'Sign Up',
                  onPressed: () {},
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                        Colors.black.withOpacity(0.05)),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child:
                      Text(widget.titleBack ?? "", style: TextStyles.greyLight),
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
        Text('Sign Up', style: TextStyles.greyNormal),
        SizedBox(height: 2),
        Text('Begin New Journey',
            style: TextStyles.blackSemiBold.copyWith(fontSize: FontSizes.s20)),
        SizedBox(height: 10),
        Center(
            child: Image.asset(Assets.userDefault,
                width: MediaQuery.of(context).size.width * 0.25)),
        SizedBox(height: 10),
      ],
    );
  }
}
