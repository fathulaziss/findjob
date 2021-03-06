import 'dart:developer';
import 'package:findjob/providers/auth_provider.dart';
import 'package:findjob/providers/user_provider.dart';
import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/helpers/utils.dart';
import 'package:findjob/shared/widgets/buttons/button_primary.dart';
import 'package:findjob/shared/widgets/inputs/input_email.dart';
import 'package:findjob/shared/widgets/inputs/input_password.dart';
import 'package:findjob/shared/widgets/inputs/input_primary.dart';
import 'package:findjob/features/login/page_login.dart';
import 'package:findjob/shared/widgets/others/loading_indicator.dart';
import 'package:findjob/shared/widgets/others/popup_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
  String name = '';
  String email = '';
  String password = '';
  String goal = '';
  bool isValidName = false;
  bool isValidEmail = false;
  bool isValidPassword = false;
  bool isValidGoal = false;
  bool isLoading = false;

  _offLoading() => setState(() => isLoading = false);

  _onLoading() => setState(() => isLoading = true);

  _validateForm() {
    if (isValidName && isValidEmail && isValidPassword && isValidGoal) {
      _register();
    } else {
      Get.snackbar('Info', 'Please complete form with correct',
          backgroundColor: Colors.yellow, colorText: AppColors.blackColor);
    }
  }

  _register() async {
    var authProvider = Provider.of<AuthProvider>(context, listen: false);
    var userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      dismisKeyboard();
      _onLoading();
      var response = await authProvider.register(
          email: email, password: password, name: name, goal: goal);
      _offLoading();
      if (response != null) {
        userProvider.user = response;
        showPopUpDialog(
          title: 'Success',
          description:
              'Your account has been successfully created, click Sign In button to continue',
          labelButton: 'Sign In',
          onPress: () => Get.offAll(() => PageLogin()),
        );
      } else {
        showPopUpDialog(
          title: 'Error',
          description: 'Email already used',
          labelButton: 'Back',
          buttonColor: AppColors.secondColor,
          onPress: () => Get.back(),
        );
      }
    } catch (e) {
      _offLoading();
      Get.snackbar('Error', e.toString(),
          backgroundColor: Colors.red, colorText: AppColors.whiteColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
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
                InputPrimary(
                  controller: nameController,
                  label: 'Full Name',
                  hintText: 'Full Name',
                  onChange: (value) {
                    setState(() {
                      name = value!;
                    });
                  },
                  validate: (value) {
                    if (value.toString().isEmpty) {
                      isValidName = false;
                      log('cek isValidName : $isValidName');
                      return "Full Name can't be empty";
                    } else {
                      isValidName = true;
                      log('cek isValidName : $isValidName');
                      return null;
                    }
                  },
                ),
                InputEmail(
                  controller: emailController,
                  label: 'Email Address',
                  hintText: 'Email Address',
                  email: (String value) {
                    email = value;
                  },
                  isValid: (bool value) {
                    isValidEmail = value;
                    log('cek isValidEmail : $isValidEmail');
                  },
                ),
                InputPassword(
                  controller: passwordController,
                  label: 'Password',
                  hintText: 'Password',
                  onChange: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                  isValid: (bool value) {
                    isValidPassword = value;
                  },
                ),
                InputPrimary(
                  controller: goalController,
                  margin: EdgeInsets.only(bottom: 20),
                  label: 'Your Goal',
                  hintText: 'ex : Become to be Flutter Developer',
                  onChange: (value) {
                    setState(() {
                      goal = value!;
                    });
                  },
                  validate: (value) {
                    if (value.toString().isEmpty) {
                      isValidGoal = false;
                      log('cek isValidGoal : $isValidGoal');
                      return "Goal can't be empty";
                    } else {
                      isValidGoal = true;
                      log('cek isValidGoal : $isValidGoal');
                      return null;
                    }
                  },
                ),
                isLoading
                    ? loadingIndicator()
                    : ButtonPrimary(
                        backgroundColor: AppColors.mainColor,
                        titleStyle: TextStyles.whiteMedium,
                        title: 'Sign Up',
                        onPressed: () {
                          _validateForm();
                        },
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
        verticalSpace(Insets.xs / 2),
        Text('Begin New Journey',
            style: TextStyles.blackSemiBold.copyWith(fontSize: FontSizes.s20)),
        verticalSpace(Insets.lg),
        Center(
            child: Image.asset(Assets.userDefault, width: IconSizes.xxl * 2)),
        verticalSpace(Insets.lg),
      ],
    );
  }
}
